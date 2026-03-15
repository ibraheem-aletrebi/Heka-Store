import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/services/remote/api_error_factory.dart';
import 'package:heka_store/core/services/remote/api_error_messages.dart';
import 'package:heka_store/core/services/remote/api_error_type.dart';
import 'package:heka_store/core/services/remote/api_local_status_code.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';



class ApiErrorHandler {
  ApiErrorHandler._();
  static final ApiErrorHandler instance = ApiErrorHandler._();
  factory ApiErrorHandler() => instance;

  bool isArabic = false;
  VoidCallback? onUnauthorized;

  ApiErrorModel handle(dynamic e) {
    if (e is DioException) {
      return _handleDioException(e);
    }

    final dioInfo = _extractDioExceptionInfo(e);
    if (dioInfo != null) {
      return _handleExtractedDioInfo(dioInfo);
    }

    if (e is Exception) {
      return _handleGenericException(e);
    }
    return ApiErrorFactory.defaultError;
  }

  ApiErrorModel _handleDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return _fromKey(
          'connectionTimeout',
          icon: Icons.wifi_off,
          code: ApiLocalStatusCode.connectionTimeout,
          errorType: ApiErrorType.network,
          canRetry: true,
        );

      case DioExceptionType.sendTimeout:
        return _fromKey(
          'sendTimeout',
          icon: Icons.file_upload_off,
          code: ApiLocalStatusCode.sendTimeout,
          errorType: ApiErrorType.network,
          canRetry: true,
        );

      case DioExceptionType.receiveTimeout:
        return _fromKey(
          'receiveTimeout',
          icon: Icons.hourglass_bottom,
          code: ApiLocalStatusCode.receiveTimeout,
          errorType: ApiErrorType.network,
          canRetry: true,
        );

      case DioExceptionType.badCertificate:
        return _fromKey(
          'badCertificate',
          icon: Icons.security,
          code: ApiLocalStatusCode.badCertificate,
          errorType: ApiErrorType.network,
          canRetry: false,
        );

      case DioExceptionType.badResponse:
        return _handleBadResponse(e);

      case DioExceptionType.cancel:
        return _fromKey(
          'cancelled',
          icon: Icons.cancel,
          code: ApiLocalStatusCode.cancel,
          errorType: ApiErrorType.unknown,
          canRetry: false,
        );

      case DioExceptionType.connectionError:
        return _fromKey(
          'noInternet',
          icon: Icons.wifi_off,
          code: ApiLocalStatusCode.connectionError,
          errorType: ApiErrorType.network,
          canRetry: true,
        );

      case DioExceptionType.unknown:
        if (e.error is SocketException) {
          return _fromKey(
            'noInternet',
            icon: Icons.wifi_off,
            code: ApiLocalStatusCode.connectionError,
            errorType: ApiErrorType.network,
            canRetry: true,
          );
        }
        return _fromKey(
          'unknown',
          icon: Icons.error_outline,
          code: ApiLocalStatusCode.unknown,
          errorType: ApiErrorType.unknown,
          canRetry: true,
        );
    }
  }

  ApiErrorModel _handleBadResponse(DioException e) {
    final statusCode = e.response?.statusCode ?? 0;
    final data = e.response?.data;
    final serverMsg = _extractServerMessage(data);

    switch (statusCode) {
      case 400:
        return _build(
          message: serverMsg ?? _text('validation').$1,
          action: _text('validation').$2,
          icon: Icons.warning_amber_rounded,
          code: ApiLocalStatusCode.badRequest,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 401:
        return _build(
          message: serverMsg ?? _text('unauthorized').$1,
          action: _text('unauthorized').$2,
          icon: Icons.lock_outline,
          code: ApiLocalStatusCode.unauthorized,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 403:
        return _build(
          message: serverMsg ?? _text('forbidden').$1,
          action: _text('forbidden').$2,
          icon: Icons.block,
          code: ApiLocalStatusCode.forbidden,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 404:
        return _build(
          message: serverMsg ?? _text('notFound').$1,
          action: _text('notFound').$2,
          icon: Icons.search_off,
          code: ApiLocalStatusCode.notFound,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 408:
        return _build(
          message: serverMsg ?? 'Request timeout',
          action: 'Please try again',
          icon: Icons.timer_off,
          code: ApiLocalStatusCode.requestTimeout,
          errorType: ApiErrorType.server,
          canRetry: true,
        );

      case 409:
        return _build(
          message: serverMsg ?? _text('conflict').$1,
          action: _text('conflict').$2,
          icon: Icons.sync_problem_rounded,
          code: ApiLocalStatusCode.conflict,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 419:
        return _build(
          message: serverMsg ?? _text('sessionExpired').$1,
          action: _text('sessionExpired').$2,
          icon: Icons.timer_off,
          code: ApiLocalStatusCode.unauthorized,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 422:
        return _build(
          message: serverMsg ?? _text('validation').$1,
          action: _text('validation').$2,
          icon: Icons.rule,
          code: ApiLocalStatusCode.validationError,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 429:
        return _build(
          message: serverMsg ?? 'Too many requests',
          action: 'Please wait and try again',
          icon: Icons.speed,
          code: ApiLocalStatusCode.tooManyRequests,
          errorType: ApiErrorType.server,
          canRetry: true,
        );

      case 440:
        return _build(
          message: serverMsg ?? _text('sessionExpired').$1,
          action: _text('sessionExpired').$2,
          icon: Icons.timer_off,
          code: ApiLocalStatusCode.unauthorized,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 498:
      case 499:
        return _build(
          message: serverMsg ?? _text('sessionExpired').$1,
          action: _text('sessionExpired').$2,
          icon: Icons.lock_outline,
          code: ApiLocalStatusCode.unauthorized,
          errorType: ApiErrorType.server,
          canRetry: false,
        );

      case 500:
        return _build(
          message: serverMsg ?? _text('serverError').$1,
          action: _text('serverError').$2,
          icon: Icons.cloud_off,
          code: ApiLocalStatusCode.internalServerError,
          errorType: ApiErrorType.server,
          canRetry: true,
        );

      case 502:
        return _build(
          message: serverMsg ?? 'Bad gateway',
          action: 'Please try again later',
          icon: Icons.cloud_off,
          code: ApiLocalStatusCode.badGateway,
          errorType: ApiErrorType.server,
          canRetry: true,
        );

      case 503:
        return _build(
          message: serverMsg ?? 'Service unavailable',
          action: 'Please try again later',
          icon: Icons.cloud_off,
          code: ApiLocalStatusCode.serviceUnavailable,
          errorType: ApiErrorType.server,
          canRetry: true,
        );

      case 504:
        return _build(
          message: serverMsg ?? 'Gateway timeout',
          action: 'Please try again',
          icon: Icons.timer_off,
          code: ApiLocalStatusCode.gatewayTimeout,
          errorType: ApiErrorType.server,
          canRetry: true,
        );

      default:
        return _build(
          message: serverMsg ?? _text('unknown').$1,
          action: _text('unknown').$2,
          icon: Icons.error_outline,
          code: ApiLocalStatusCode.defaultError,
          errorType: ApiErrorType.server,
          canRetry: statusCode >= 500,
        );
    }
  }

  _DioExceptionInfo? _extractDioExceptionInfo(dynamic e) {
    final errorString = e.toString();
    if (!errorString.contains('DioException') &&
        !errorString.contains('status code')) {
      return null;
    }
    int? statusCode;
    final statusRegex = RegExp(r'status code of (\d+)');
    final statusMatch = statusRegex.firstMatch(errorString);
    if (statusMatch != null) {
      statusCode = int.parse(statusMatch.group(1)!);
    }
    String? message;
    final messageLines = errorString.split('\n');
    if (messageLines.isNotEmpty) {
      message = messageLines.first;
    }
    DioExceptionType? type;
    if (errorString.contains('connection timeout')) {
      type = DioExceptionType.connectionTimeout;
    } else if (errorString.contains('bad response')) {
      type = DioExceptionType.badResponse;
    } else if (errorString.contains('connection error')) {
      type = DioExceptionType.connectionError;
    } else if (errorString.contains('send timeout')) {
      type = DioExceptionType.sendTimeout;
    } else if (errorString.contains('receive timeout')) {
      type = DioExceptionType.receiveTimeout;
    } else if (errorString.contains('cancel')) {
      type = DioExceptionType.cancel;
    }

    return _DioExceptionInfo(
      statusCode: statusCode,
      message: message,
      type: type,
      rawString: errorString,
    );
  }

  ApiErrorModel _handleExtractedDioInfo(_DioExceptionInfo info) {
    if (info.statusCode != null) {
      switch (info.statusCode) {
        case 400:
          return _build(
            message: _text('validation').$1,
            action: _text('validation').$2,
            icon: Icons.warning_amber_rounded,
            code: ApiLocalStatusCode.badRequest,
            errorType: ApiErrorType.server,
            canRetry: false,
          );

        case 401:
          _handleUnauthorized();
          return _build(
            message: _text('unauthorized').$1,
            action: _text('unauthorized').$2,
            icon: Icons.lock_outline,
            code: ApiLocalStatusCode.unauthorized,
            errorType: ApiErrorType.server,
            canRetry: false,
          );

        case 403:
          return _build(
            message: _text('forbidden').$1,
            action: _text('forbidden').$2,
            icon: Icons.block,
            code: ApiLocalStatusCode.forbidden,
            errorType: ApiErrorType.server,
            canRetry: false,
          );

        case 404:
          return _build(
            message: _text('notFound').$1,
            action: _text('notFound').$2,
            icon: Icons.search_off,
            code: ApiLocalStatusCode.notFound,
            errorType: ApiErrorType.server,
            canRetry: false,
          );

        case 408:
          return _build(
            message: 'Request timeout',
            action: 'Please try again',
            icon: Icons.timer_off,
            code: ApiLocalStatusCode.requestTimeout,
            errorType: ApiErrorType.server,
            canRetry: true,
          );

        case 409:
          return _build(
            message: _text('conflict').$1,
            action: _text('conflict').$2,
            icon: Icons.sync_problem_rounded,
            code: ApiLocalStatusCode.conflict,
            errorType: ApiErrorType.server,
            canRetry: false,
          );

        case 422:
          return _build(
            message: _text('validation').$1,
            action: _text('validation').$2,
            icon: Icons.rule,
            code: ApiLocalStatusCode.validationError,
            errorType: ApiErrorType.server,
            canRetry: false,
          );

        case 429:
          return _build(
            message: 'Too many requests',
            action: 'Please wait and try again',
            icon: Icons.speed,
            code: ApiLocalStatusCode.tooManyRequests,
            errorType: ApiErrorType.server,
            canRetry: true,
          );

        case 500:
        case 502:
        case 503:
        case 504:
          return _build(
            message: _text('serverError').$1,
            action: _text('serverError').$2,
            icon: Icons.cloud_off,
            code: ApiLocalStatusCode.internalServerError,
            errorType: ApiErrorType.server,
            canRetry: true,
          );
      }
    }

    if (info.type != null) {
      switch (info.type!) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.connectionError:
          return _fromKey(
            'noInternet',
            icon: Icons.wifi_off,
            code: ApiLocalStatusCode.connectionError,
            errorType: ApiErrorType.network,
            canRetry: true,
          );

        case DioExceptionType.cancel:
          return _fromKey(
            'cancelled',
            icon: Icons.cancel,
            code: ApiLocalStatusCode.cancel,
            errorType: ApiErrorType.unknown,
            canRetry: false,
          );

        default:
          break;
      }
    }
    return _build(
      message: _text('unknown').$1,
      action: _text('unknown').$2,
      icon: Icons.error_outline,
      code: ApiLocalStatusCode.defaultError,
      errorType: ApiErrorType.unknown,
      canRetry: true,
    );
  }

  String? _extractServerMessage(dynamic data) {
    if (data is! Map<String, dynamic>) return null;

    if (data['message'] is String) return data['message'] as String;
    if (data['detail'] is String) return data['detail'] as String;
    if (data['title'] is String) return data['title'] as String;

    if (data['errors'] is Map) {
      final errors = data['errors'] as Map;
      final firstError = errors.values.firstWhere(
        (v) => v is List && v.isNotEmpty,
        orElse: () => null,
      );
      if (firstError != null && firstError is List) {
        return firstError.first.toString();
      }
    }

    if (data['type'] != null && data['title'] != null) {
      return '${data['title']}: ${data['detail'] ?? ''}';
    }

    final error = data['error'];
    if (error is Map<String, dynamic>) {
      if (error['message'] is String) return error['message'] as String;
    }

    if (data['error'] is String) return data['error'] as String;

    return null;
  }

  ApiErrorModel _handleGenericException(Exception e) {
    if (e is SocketException) {
      return _fromKey(
        'noInternet',
        icon: Icons.wifi_off,
        code: ApiLocalStatusCode.connectionError,
        errorType: ApiErrorType.network,
        canRetry: true,
      );
    }

    if (e is FormatException) {
      return _build(
        message: 'Invalid data format',
        action: 'Please try again',
        icon: Icons.data_usage,
        code: ApiLocalStatusCode.defaultError,
        errorType: ApiErrorType.unknown,
        canRetry: false,
      );
    }

    return ApiErrorFactory.defaultError;
  }

  void _handleUnauthorized() {
    onUnauthorized?.call();
  }

  (String, String) _text(String key) =>
      ApiErrorMessages.get(key, isArabic: isArabic);

  ApiErrorModel _fromKey(
    String key, {
    required IconData icon,
    required ApiLocalStatusCode code,
    required ApiErrorType errorType,
    required bool canRetry,
  }) {
    final (message, action) = _text(key);
    return _build(
      message: message,
      action: action,
      icon: icon,
      code: code,
      errorType: errorType,
      canRetry: canRetry,
    );
  }

  ApiErrorModel _build({
    required String message,
    required String action,
    required IconData icon,
    required ApiLocalStatusCode code,
    required ApiErrorType errorType,
    required bool canRetry,
  }) => ApiErrorModel(
    message: message,
    action: action,
    icon: icon,
    statusCode: code,
    errorType: errorType,
    canRetry: canRetry,
  );
}

class _DioExceptionInfo {
  final int? statusCode;
  final String? message;
  final DioExceptionType? type;
  final String rawString;

  _DioExceptionInfo({
    this.statusCode,
    this.message,
    this.type,
    required this.rawString,
  });
}
