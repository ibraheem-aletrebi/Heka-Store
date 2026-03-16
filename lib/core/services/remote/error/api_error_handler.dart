// api_error_handler.dart

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/core/services/remote/error/api_error_type.dart';
import 'package:heka_store/core/services/remote/error/remote_failure.dart';

class ApiErrorHandler {
  ApiErrorHandler._();

  static final ApiErrorHandler instance = ApiErrorHandler._();

  VoidCallback? _onUnauthorized;

  // ─── Init ─────────────────────────────────────────────────────────────────

  void init({VoidCallback? onUnauthorized}) {
    _onUnauthorized = onUnauthorized;
  }

  // ─── Handle ───────────────────────────────────────────────────────────────

  ApiErrorModel handle(dynamic e) {
    if (e is DioException) return _handleDioException(e);
    if (e is SocketException) return _build(RemoteFailure.noInternet);
    if (e is FormatException) return _build(RemoteFailure.unknown);
    if (e is Exception) return _handleGenericException(e);
    return _build(RemoteFailure.unknown);
  }

  // ─── Dio ──────────────────────────────────────────────────────────────────

  ApiErrorModel _handleDioException(DioException e) {
    return switch (e.type) {
      DioExceptionType.connectionTimeout => _build(
        RemoteFailure.connectionTimeout,
      ),
      DioExceptionType.sendTimeout => _build(RemoteFailure.connectionTimeout),
      DioExceptionType.receiveTimeout => _build(
        RemoteFailure.connectionTimeout,
      ),
      DioExceptionType.badCertificate => _build(RemoteFailure.unknown),
      DioExceptionType.cancel => _build(RemoteFailure.requestCancelled),
      DioExceptionType.connectionError => _build(RemoteFailure.noInternet),
      DioExceptionType.badResponse => _handleBadResponse(e),
      DioExceptionType.unknown =>
        e.error is SocketException
            ? _build(RemoteFailure.noInternet)
            : _build(RemoteFailure.unknown),
    };
  }

  ApiErrorModel _handleBadResponse(DioException e) {
    final statusCode = e.response?.statusCode ?? 0;
    final data = e.response?.data;
    final serverMsg = _extractServerMessage(data);
    final validationErrors = _extractValidationErrors(data);

    // ─── Session expired ──────────────────────────────
    if ([419, 440, 498, 499].contains(statusCode)) {
      return _build(
        RemoteFailure.tokenExpired,
        serverMessage: serverMsg,
        validationErrors: validationErrors,
      );
    }

    // ─── 401 ─────────────────────────────────────────
    if (statusCode == 401) {
      final failure = _resolve401(serverMsg);
      if (failure == RemoteFailure.unauthorized) {
        _handleUnauthorized();
      }
      return _build(
        failure,
        serverMessage: serverMsg,
        validationErrors: validationErrors,
      );
    }

    return _build(
      RemoteFailure.fromStatusCode(statusCode),
      serverMessage: serverMsg,
      validationErrors: validationErrors,
    );
  }

  // ─── 401 Resolver ─────────────────────────────────────────────────────────

  RemoteFailure _resolve401(String? message) {
    if (message == null) return RemoteFailure.unauthorized;

    final msg = message.toLowerCase();

    if (msg.contains('invalid credentials') ||
        msg.contains('invalid email') ||
        msg.contains('invalid password') ||
        msg.contains('wrong password')) {
      return RemoteFailure.invalidCredentials;
    }

    if (msg.contains('token') ||
        msg.contains('expired') ||
        msg.contains('jwt')) {
      return RemoteFailure.tokenExpired;
    }

    if (msg.contains('blocked') || msg.contains('suspended')) {
      return RemoteFailure.accountBlocked;
    }

    return RemoteFailure.unauthorized;
  }

  // ─── Generic ──────────────────────────────────────────────────────────────

  ApiErrorModel _handleGenericException(Exception e) {
    if (e is SocketException) return _build(RemoteFailure.noInternet);
    if (e is FormatException) return _build(RemoteFailure.unknown);
    return _build(RemoteFailure.unknown);
  }

  // ─── Unauthorized ─────────────────────────────────────────────────────────

  void _handleUnauthorized() => _onUnauthorized?.call();

  // ─── Build ────────────────────────────────────────────────────────────────

  ApiErrorModel _build(
    RemoteFailure failure, {
    String? serverMessage,
    List<String>? validationErrors,
  }) {
    return ApiErrorModel(
      failure: failure,
      serverMessage: serverMessage,
      validationErrors: validationErrors,
      errorType: _errorTypeFor(failure),
    );
  }

  ApiErrorType _errorTypeFor(RemoteFailure failure) {
    return switch (failure) {
      RemoteFailure.noInternet ||
      RemoteFailure.connectionTimeout => ApiErrorType.network,
      RemoteFailure.requestCancelled ||
      RemoteFailure.unknown => ApiErrorType.unknown,
      _ => ApiErrorType.server,
    };
  }

  // ─── Extractors ───────────────────────────────────────────────────────────

  String? _extractServerMessage(dynamic data) {
    if (data is! Map<String, dynamic>) return null;

    if (data['message'] is String) return data['message'] as String;
    if (data['detail'] is String) return data['detail'] as String;
    if (data['title'] is String) return data['title'] as String;
    if (data['error'] is String) return data['error'] as String;

    if (data['error'] is Map<String, dynamic>) {
      final err = data['error'] as Map<String, dynamic>;
      if (err['message'] is String) return err['message'] as String;
    }

    return null;
  }

  List<String>? _extractValidationErrors(dynamic data) {
    if (data is! Map<String, dynamic>) return null;

    if (data['errors'] is List) {
      final list = (data['errors'] as List).whereType<String>().toList();
      return list.isEmpty ? null : list;
    }

    if (data['errors'] is Map) {
      final list = (data['errors'] as Map).values
          .whereType<List>()
          .expand((v) => v.whereType<String>())
          .toList();
      return list.isEmpty ? null : list;
    }

    return null;
  }
}
