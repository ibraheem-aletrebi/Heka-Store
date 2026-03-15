
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/core/services/remote/error/api_error_type.dart';
import 'package:heka_store/core/services/remote/error/remote_failure.dart';
import 'package:heka_store/core/services/remote/api_local_status_code.dart';

class ApiErrorHandler {
  ApiErrorHandler._();
  static final ApiErrorHandler instance = ApiErrorHandler._();
  factory ApiErrorHandler() => instance;

  VoidCallback? onUnauthorized;

  ApiErrorModel handle(dynamic e) {
    if (e is DioException)    return _handleDioException(e);

    final dioInfo = _extractDioExceptionInfo(e);
    if (dioInfo != null)      return _handleExtractedDioInfo(dioInfo);

    if (e is SocketException) return _build(RemoteFailure.noInternet);
    if (e is FormatException)  return _build(RemoteFailure.unknown);
    if (e is Exception)        return _handleGenericException(e);

    return _build(RemoteFailure.unknown);
  }

  ApiErrorModel _handleDioException(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout => _build(RemoteFailure.connectionTimeout),
      DioExceptionType.sendTimeout       => _build(RemoteFailure.connectionTimeout),
      DioExceptionType.receiveTimeout    => _build(RemoteFailure.connectionTimeout),
      DioExceptionType.badCertificate    => _build(RemoteFailure.unknown),
      DioExceptionType.cancel            => _build(RemoteFailure.requestCancelled),
      DioExceptionType.connectionError   => _build(RemoteFailure.noInternet),
      DioExceptionType.badResponse       => _handleBadResponse(e),
      DioExceptionType.unknown           => e.error is SocketException
          ? _build(RemoteFailure.noInternet)
          : _build(RemoteFailure.unknown),
    };
  }


  ApiErrorModel _handleBadResponse(DioException e) {
    final statusCode       = e.response?.statusCode ?? 0;
    final data             = e.response?.data;
    final serverMsg        = _extractServerMessage(data);
    final validationErrors = _extractValidationErrors(data);

    // session expired variants → tokenExpired
    if ([419, 440, 498, 499].contains(statusCode)) {
      return _build(
        RemoteFailure.tokenExpired,
        serverMessage: serverMsg,
        validationErrors: validationErrors,
      );
    }

    final failure = RemoteFailure.fromStatusCode(statusCode);

    // 401 → trigger onUnauthorized callback
    if (statusCode == 401) _handleUnauthorized();

    return _build(
      failure,
      serverMessage: serverMsg,
      validationErrors: validationErrors,
    );
  }


  ApiErrorModel _handleExtractedDioInfo(_DioExceptionInfo info) {
    if (info.statusCode != null) {
      if (info.statusCode == 401) _handleUnauthorized();
      return _build(RemoteFailure.fromStatusCode(info.statusCode!));
    }

    if (info.type != null) {
      return switch (info.type!) {
        DioExceptionType.connectionTimeout ||
        DioExceptionType.sendTimeout       ||
        DioExceptionType.receiveTimeout    ||
        DioExceptionType.connectionError   => _build(RemoteFailure.noInternet),
        DioExceptionType.cancel            => _build(RemoteFailure.requestCancelled),
        _                                  => _build(RemoteFailure.unknown),
      };
    }

    return _build(RemoteFailure.unknown);
  }

  ApiErrorModel _handleGenericException(Exception e) {
    if (e is SocketException) return _build(RemoteFailure.noInternet);
    if (e is FormatException)  return _build(RemoteFailure.unknown);
    return _build(RemoteFailure.unknown);
  }


  void _handleUnauthorized() => onUnauthorized?.call();

  ApiErrorModel _build(
    RemoteFailure failure, {
    String? serverMessage,
    List<String>? validationErrors,
  }) {
    return ApiErrorModel(
      failure: failure,
      serverMessage: serverMessage,
      validationErrors: validationErrors,
      statusCode: ApiLocalStatusCode.fromFailure(failure),
      errorType: _errorTypeFor(failure),
    );
  }

  ApiErrorType _errorTypeFor(RemoteFailure failure) {
    return switch (failure) {
      RemoteFailure.noInternet        ||
      RemoteFailure.connectionTimeout => ApiErrorType.network,

      RemoteFailure.requestCancelled  ||
      RemoteFailure.unknown           => ApiErrorType.unknown,

      _                               => ApiErrorType.server,
    };
  }

  String? _extractServerMessage(dynamic data) {
    if (data is! Map<String, dynamic>) return null;
    if (data['message'] is String) return data['message'] as String;
    if (data['detail']  is String) return data['detail']  as String;
    if (data['title']   is String) return data['title']   as String;
    if (data['error']   is String) return data['error']   as String;
    if (data['error'] is Map<String, dynamic>) {
      final err = data['error'] as Map<String, dynamic>;
      if (err['message'] is String) return err['message'] as String;
    }
    return null;
  }

  List<String>? _extractValidationErrors(dynamic data) {
    if (data is! Map<String, dynamic>) return null;
    if (data['errors'] is List) {
      final list = (data['errors'] as List)
          .whereType<String>()
          .toList();
      return list.isEmpty ? null : list;
    }
    if (data['errors'] is Map) {
      final list = (data['errors'] as Map)
          .values
          .whereType<List>()
          .expand((v) => v.whereType<String>())
          .toList();
      return list.isEmpty ? null : list;
    }
    return null;
  }
  _DioExceptionInfo? _extractDioExceptionInfo(dynamic e) {
    final str = e.toString();
    if (!str.contains('DioException') && !str.contains('status code')) {
      return null;
    }
    final statusCode = int.tryParse(
      RegExp(r'status code of (\d+)').firstMatch(str)?.group(1) ?? '',
    );
    DioExceptionType? type;
    if      (str.contains('connection timeout')) {type = DioExceptionType.connectionTimeout;}
    else if (str.contains('bad response'))       {type = DioExceptionType.badResponse;}
    else if (str.contains('connection error'))   {type = DioExceptionType.connectionError;}
    else if (str.contains('send timeout'))      {type = DioExceptionType.sendTimeout;}
    else if (str.contains('receive timeout'))    {type = DioExceptionType.receiveTimeout;}
    else if (str.contains('cancel'))             {type = DioExceptionType.cancel;}
    return _DioExceptionInfo(statusCode: statusCode, type: type, rawString: str);
  }
}
class _DioExceptionInfo {
  final int? statusCode;
  final DioExceptionType? type;
  final String rawString;

  _DioExceptionInfo({
    this.statusCode,
    this.type,
    required this.rawString,
  });
}