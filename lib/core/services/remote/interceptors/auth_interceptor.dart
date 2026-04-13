import 'dart:async';
import 'package:dio/dio.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';
import 'package:heka_store/core/constants/api_constants.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final Future<void> Function()? onLogout;

  // ✅ Completer replaces the boolean flag + queue pattern.
  // While non-null, a refresh is in flight — newcomers await its future.
  // Completed with the new access token on success, with an error on failure.
  Completer<String>? _refreshCompleter;

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
    // ✅ A refresh is already running — await the same Completer.
    // This is the race-condition fix: no second refresh is triggered.
    // All concurrent 401s suspend here and wake up with the same token.
    if (_refreshCompleter != null) {
      try {
        final token = await _refreshCompleter!.future;
        final response = await _retryWithToken(error.requestOptions, token);
        handler.resolve(response);
      } catch (_) {
        handler.reject(
          DioException(
            requestOptions: error.requestOptions,
            response: error.response,
            type: DioExceptionType.badResponse,
            error: 'Session expired. Please log in again.',
          ),
        );
      }
      return;
    }

    // ✅ First 401 to arrive — own the refresh.
    _refreshCompleter = Completer<String>();

    try {
      final refreshToken = await SecureStorageService().getRefreshToken();
      if (refreshToken == null) throw Exception('No refresh token available');

      final response = await dio.post(
        ApiConstants.refreshToken,
        data: {'refreshToken': refreshToken},
        options: Options(extra: {'skipAuthInterceptor': true}),
      );

      final tokenData = response.data['data'];
      final newAccess = tokenData['accessToken'] as String;
      final newRefresh = tokenData['refreshToken'] as String;

      await SecureStorageService().saveTokens(
        access: newAccess,
        refresh: newRefresh,
      );

      // ✅ Complete with the new token — all waiting 401s wake up now.
      _refreshCompleter!.complete(newAccess);

      final retryResponse = await _retryWithToken(error.requestOptions, newAccess);
      handler.resolve(retryResponse);
    } catch (e) {
      // ✅ Complete with error — all waiting 401s will reject cleanly.
      _refreshCompleter!.completeError(e);

      await SecureStorageService().deleteTokens();
      await onLogout?.call();

      handler.reject(
        DioException(
          requestOptions: error.requestOptions,
          response: error.response,
          type: DioExceptionType.badResponse,
          error: 'Session expired. Please log in again.',
        ),
      );
    } finally {
      // ✅ Nulled out in finally — safe whether success or error.
      // Only cleared after complete/completeError so no new 401 can
      // slip in and see null before all waiters have been notified.
      _refreshCompleter = null;
    }
  }

  Future<Response> _retryWithToken(
    RequestOptions requestOptions,
    String token,
  ) {
    return dio.request(
      requestOptions.path,
      data: requestOptions.data,
      queryParameters: requestOptions.queryParameters,
      options: Options(
        method: requestOptions.method,
        headers: {
          ...requestOptions.headers,
          'Authorization': 'Bearer $token',
        },
        extra: requestOptions.extra,
        contentType: requestOptions.contentType,
        responseType: requestOptions.responseType,
      ),
    );
  }
}