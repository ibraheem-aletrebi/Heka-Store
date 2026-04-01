import 'package:dio/dio.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';
import 'package:heka_store/core/constants/api_constants.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final Future<void> Function()? onLogout;

  bool _isRefreshing = false;
  final List<PendingRequest> _queue = [];

  AuthInterceptor(this.dio, {this.onLogout});

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra['skipAuthInterceptor'] == true) {
      return handler.next(options);
    }

    final token = await SecureStorageService().getAccessToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401 &&
        err.requestOptions.extra['skipAuthInterceptor'] != true) {
      return _handle401(err, handler);
    }

    handler.next(err);
  }

  Future<void> _handle401(
    DioException error,
    ErrorInterceptorHandler handler,
  ) async {
    final requestOptions = error.requestOptions;

    if (_isRefreshing) {
      // ✅ queue the request and wait — will be resolved after refresh
      _queue.add(PendingRequest(requestOptions, handler));
      return;
    }

    _isRefreshing = true;

    try {
      final refreshToken = await SecureStorageService().getRefreshToken();

      if (refreshToken == null) {
        throw Exception('No refresh token available');
      }

      final response = await dio.post(
        ApiConstants.refreshToken,
        data: {'refreshToken': refreshToken},
        options: Options(extra: {'skipAuthInterceptor': true}),
      );

      final tokenData = response.data['data'];
      final newAccess = tokenData['accessToken'] as String;
      final newRefresh = tokenData['refreshToken'] as String;

      // ✅ save tokens BEFORE retry so _retry reads the fresh token
      await SecureStorageService().saveTokens(
        access: newAccess,
        refresh: newRefresh,
      );

      // ✅ reset flag BEFORE flush so queued 401s don't re-enter refresh loop
      _isRefreshing = false;

      // ✅ retry original request with new token
      final retryResponse = await _retry(requestOptions);
      handler.resolve(retryResponse);

      // ✅ flush queue AFTER original is resolved
      await _flushQueue();
    } catch (e) {
      // ✅ always reset flag on failure path too
      _isRefreshing = false;

      // ✅ reject all queued requests with the same error
      _rejectQueue(error);

      // ✅ clear tokens — session is invalid
      await SecureStorageService().deleteTokens();

      // ✅ notify app to navigate to login
      await onLogout?.call();

      // ✅ reject the original handler too
      handler.reject(
        DioException(
          requestOptions: error.requestOptions,
          response: error.response,
          type: DioExceptionType.badResponse,
          error: 'Session expired. Please log in again.',
        ),
      );
    }
  }

  Future<Response> _retry(RequestOptions requestOptions) async {
    // ✅ always read fresh token from storage for every retry
    final token = await SecureStorageService().getAccessToken();

    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: {
          ...requestOptions.headers,
          if (token != null) 'Authorization': 'Bearer $token',
        },
        // ✅ preserve original extra so skipAuthInterceptor stays intact
        extra: requestOptions.extra,
        contentType: requestOptions.contentType,
        responseType: requestOptions.responseType,
      ),
    );
  }

  Future<void> _flushQueue() async {
    // ✅ snapshot and clear before iterating — prevents mutation during loop
    final pending = List<PendingRequest>.from(_queue);
    _queue.clear();

    for (final request in pending) {
      try {
        final response = await _retry(request.requestOptions);
        request.handler.resolve(response);
      } catch (e) {
        request.handler.reject(
          DioException(
            requestOptions: request.requestOptions,
            error: e,
            type: DioExceptionType.unknown,
          ),
        );
      }
    }
  }

  void _rejectQueue(DioException error) {
    final pending = List<PendingRequest>.from(_queue);
    _queue.clear();

    for (final request in pending) {
      request.handler.reject(
        DioException(
          requestOptions: request.requestOptions,
          response: error.response,
          type: error.type,
          error: error.error,
        ),
      );
    }
  }
}

class PendingRequest {
  final RequestOptions requestOptions;
  final ErrorInterceptorHandler handler;

  const PendingRequest(this.requestOptions, this.handler);
}
