// ─────────────────────────────────────────
// api_error_model.dart
// ─────────────────────────────────────────

import 'package:flutter/material.dart';
import 'package:heka_store/core/services/remote/error/api_error_type.dart';
import 'package:heka_store/core/services/remote/error/remote_failure.dart';

class ApiErrorModel {
  final RemoteFailure failure;
  final String? serverMessage;
  final List<String>? validationErrors;
  final ApiErrorType? errorType;

  const ApiErrorModel({
    required this.failure,
    this.serverMessage,
    this.validationErrors,
    this.errorType,
  });

  IconData get icon       => failure.icon;
  bool     get canRetry   => failure.canRetry;
  int      get statusCode => failure.statusCode;

  factory ApiErrorModel.fromServerResponse(
    Map<String, dynamic> json,
    int statusCode,
  ) {
    final failure = json['errorKey'] != null
        ? RemoteFailure.fromString(json['errorKey'] as String?)
        : RemoteFailure.fromStatusCode(statusCode);

    return ApiErrorModel(
      failure: failure,
      serverMessage: json['message'] as String?
          ?? json['detail']          as String?
          ?? json['title']           as String?,
      validationErrors: _parseValidationErrors(json),
      errorType: statusCode >= 500
          ? ApiErrorType.server
          : ApiErrorType.unknown,
    );
  }

  static List<String>? _parseValidationErrors(Map<String, dynamic> data) {
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

  @override
  String toString() => 'ApiErrorModel('
      'failure: ${failure.name}, '
      'statusCode: $statusCode, '
      'errorType: $errorType, '
      'serverMessage: $serverMessage, '
      'validationErrors: $validationErrors'
      ')';
}