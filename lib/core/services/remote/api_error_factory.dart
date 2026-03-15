import 'package:flutter/material.dart';
import 'package:heka_store/core/services/remote/api_error_type.dart';
import 'package:heka_store/core/services/remote/api_local_status_code.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';


class ApiErrorFactory {
  static const ApiErrorModel defaultError = ApiErrorModel(
    message: 'Something went wrong',
    action: 'Please try again',
    icon: Icons.error_outline,
    statusCode: ApiLocalStatusCode.defaultError,
    errorType: ApiErrorType.unknown,
    canRetry: true,
  );
}
