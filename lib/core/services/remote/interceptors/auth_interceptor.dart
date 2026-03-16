import 'package:dio/dio.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;

  bool _isRefreshing = false;
  final List<PendingRequest> _queue = [];

  AuthInterceptor(this.dio);

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
      _queue.add(PendingRequest(requestOptions, handler));
      return;
    }

    _isRefreshing = true;

    try {
      final refreshToken = await SecureStorageService().getRefreshToken();

      if (refreshToken == null) {
        throw Exception('No refresh token');
      }

      final response = await dio.post(
        ApiConstants.refreshToken,
        data: {'refresh': refreshToken},
        options: Options(
          headers: {'Authorization': null},
          extra: {'skipAuthInterceptor': true},
        ),
      );

      final newAccess = response.data['accessToken'] as String;
      final newRefresh = response.data['refreshToken'] as String;

      await SecureStorageService().saveTokens(
        access: newAccess,
        refresh: newRefresh,
      );

      _isRefreshing = false;

      final retryResponse = await _retry(requestOptions);
      handler.resolve(retryResponse);

      await _flushQueue();
    } catch (_) {
      _isRefreshing = false;

      _rejectQueue(error);

      await SecureStorageService().deleteTokens();

      handler.next(error);
    }
  }

  Future<Response> _retry(RequestOptions requestOptions) async {
    final token = await SecureStorageService().getAccessToken();

    requestOptions.headers['Authorization'] = 'Bearer $token';

    return dio.fetch(requestOptions);
  }

  Future<void> _flushQueue() async {
    final pending = List<PendingRequest>.from(_queue);
    _queue.clear();

    for (final request in pending) {
      try {
        final response = await _retry(request.requestOptions);
        request.handler.resolve(response);
      } on DioException catch (e) {
        request.handler.reject(e);
      } catch (e) {
        request.handler.reject(
          DioException(requestOptions: request.requestOptions, error: e),
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
