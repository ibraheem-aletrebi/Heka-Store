import 'package:heka_store/core/services/remote/error/remote_failure.dart';

enum ApiLocalStatusCode {
  connectionTimeout(1001),
  sendTimeout(1002),
  receiveTimeout(1003),
  connectionError(1004),
  badCertificate(1005),
  cancel(1006),
  unknown(1007),
  badRequest(400),
  unauthorized(401),
  forbidden(403),
  notFound(404),
  requestTimeout(408),
  conflict(409),
  validationError(422),
  tooManyRequests(429),
  internalServerError(500),
  badGateway(502),
  serviceUnavailable(503),
  gatewayTimeout(504),
  defaultError(9999);

  final int code;
  const ApiLocalStatusCode(this.code);

  static ApiLocalStatusCode? fromCode(int code) {
    return values.firstWhere(
      (status) => status.code == code,
      orElse: () => defaultError,
    );
  }

  static ApiLocalStatusCode fromFailure(RemoteFailure failure) {
    return switch (failure) {
      RemoteFailure.connectionTimeout => ApiLocalStatusCode.connectionTimeout,
      RemoteFailure.noInternet => ApiLocalStatusCode.connectionError,
      RemoteFailure.requestCancelled => ApiLocalStatusCode.cancel,
      RemoteFailure.unauthorized => ApiLocalStatusCode.unauthorized,
      RemoteFailure.tokenExpired => ApiLocalStatusCode.unauthorized,
      RemoteFailure.invalidCredentials => ApiLocalStatusCode.unauthorized,
      RemoteFailure.accountBlocked => ApiLocalStatusCode.forbidden,
      RemoteFailure.badRequest => ApiLocalStatusCode.badRequest,
      RemoteFailure.notFound => ApiLocalStatusCode.notFound,
      RemoteFailure.conflict => ApiLocalStatusCode.conflict,
      RemoteFailure.validationFailed => ApiLocalStatusCode.validationError,
      RemoteFailure.tooManyRequests => ApiLocalStatusCode.tooManyRequests,
      RemoteFailure.forbidden => ApiLocalStatusCode.forbidden,
      RemoteFailure.serverError => ApiLocalStatusCode.internalServerError,
      RemoteFailure.badGateway => ApiLocalStatusCode.badGateway,
      RemoteFailure.serviceUnavailable => ApiLocalStatusCode.serviceUnavailable,
      RemoteFailure.gatewayTimeout => ApiLocalStatusCode.gatewayTimeout,
      RemoteFailure.unknown => ApiLocalStatusCode.unknown,
    };
  }

  bool get isClientError => code >= 400 && code < 500;
  bool get isServerError => code >= 500 && code < 600;
  bool get isLocalError => code >= 1000 && code < 2000;
}
