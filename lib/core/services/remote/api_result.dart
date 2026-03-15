

import 'package:heka_store/core/services/remote/error/api_error_handler.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

abstract class ApiResult<T> {
  const ApiResult();

  R when<R>({
    required R Function(T data) onSuccess,
    required R Function(ApiErrorModel error) onError,
  });

  factory ApiResult.success(T data) = ApiSuccess<T>;
  factory ApiResult.error(dynamic error) = ApiError<T>;
}

class ApiSuccess<T> extends ApiResult<T> {
  final T data;

  const ApiSuccess(this.data);

  @override
  R when<R>({
    required R Function(T data) onSuccess,
    required R Function(ApiErrorModel error) onError,
  }) {
    return onSuccess(data);
  }
}

class ApiError<T> extends ApiResult<T> {
  final dynamic error;
  late final ApiErrorModel errorModel;

  ApiError(this.error) {
    errorModel = ApiErrorHandler().handle(error);
  }

  @override
  R when<R>({
    required R Function(T data) onSuccess,
    required R Function(ApiErrorModel error) onError,
  }) {
    return onError(errorModel);
  }
}
