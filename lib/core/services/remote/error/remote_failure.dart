

import 'package:flutter/material.dart';
import 'package:heka_store/generated/l10n.dart';

enum RemoteFailure {
  unauthorized,
  tokenExpired,
  invalidCredentials,
  accountBlocked,

  badRequest,
  notFound,
  conflict,
  validationFailed,
  tooManyRequests,
  forbidden,

  connectionTimeout,
  noInternet,
  requestCancelled,

  serverError,
  badGateway,
  serviceUnavailable,
  gatewayTimeout,

  unknown;


  int get statusCode => switch (this) {
    RemoteFailure.connectionTimeout  => 1001,
    RemoteFailure.noInternet         => 1002,
    RemoteFailure.requestCancelled   => 1003,
    RemoteFailure.unauthorized       => 401,
    RemoteFailure.tokenExpired       => 401,
    RemoteFailure.invalidCredentials => 401,
    RemoteFailure.accountBlocked     => 403,
    RemoteFailure.badRequest         => 400,
    RemoteFailure.notFound           => 404,
    RemoteFailure.conflict           => 409,
    RemoteFailure.validationFailed   => 422,
    RemoteFailure.tooManyRequests    => 429,
    RemoteFailure.forbidden          => 403,
    RemoteFailure.serverError        => 500,
    RemoteFailure.badGateway         => 502,
    RemoteFailure.serviceUnavailable => 503,
    RemoteFailure.gatewayTimeout     => 504,
    RemoteFailure.unknown            => 0,
  };

  bool get isClientError => statusCode >= 400 && statusCode < 500;
  bool get isServerError => statusCode >= 500 && statusCode < 600;
  bool get isLocalError  => statusCode >= 1000;

  String message(BuildContext context) {
    final l = S.of(context);
    return switch (this) {
      RemoteFailure.unauthorized       => l.error_unauthorized_message,
      RemoteFailure.tokenExpired       => l.error_token_expired_message,
      RemoteFailure.invalidCredentials => l.error_invalid_credentials_message,
      RemoteFailure.accountBlocked     => l.error_account_blocked_message,
      RemoteFailure.badRequest         => l.error_bad_request_message,
      RemoteFailure.notFound           => l.error_not_found_message,
      RemoteFailure.conflict           => l.error_conflict_message,
      RemoteFailure.validationFailed   => l.error_validation_failed_message,
      RemoteFailure.tooManyRequests    => l.error_too_many_requests_message,
      RemoteFailure.forbidden          => l.error_forbidden_message,
      RemoteFailure.connectionTimeout  => l.error_connection_timeout_message,
      RemoteFailure.noInternet         => l.error_no_internet_message,
      RemoteFailure.requestCancelled   => l.error_request_cancelled_message,
      RemoteFailure.serverError        => l.error_server_error_message,
      RemoteFailure.badGateway         => l.error_bad_gateway_message,
      RemoteFailure.serviceUnavailable => l.error_service_unavailable_message,
      RemoteFailure.gatewayTimeout     => l.error_gateway_timeout_message,
      RemoteFailure.unknown            => l.error_unknown_message,
    };
  }

  String action(BuildContext context) {
    final l = S.of(context);
    return switch (this) {
      RemoteFailure.unauthorized       => l.error_unauthorized_action,
      RemoteFailure.tokenExpired       => l.error_token_expired_action,
      RemoteFailure.invalidCredentials => l.error_invalid_credentials_action,
      RemoteFailure.accountBlocked     => l.error_account_blocked_action,
      RemoteFailure.badRequest         => l.error_bad_request_action,
      RemoteFailure.notFound           => l.error_not_found_action,
      RemoteFailure.conflict           => l.error_conflict_action,
      RemoteFailure.validationFailed   => l.error_validation_failed_action,
      RemoteFailure.tooManyRequests    => l.error_too_many_requests_action,
      RemoteFailure.forbidden          => l.error_forbidden_action,
      RemoteFailure.connectionTimeout  => l.error_connection_timeout_action,
      RemoteFailure.noInternet         => l.error_no_internet_action,
      RemoteFailure.requestCancelled   => l.error_request_cancelled_action,
      RemoteFailure.serverError        => l.error_server_error_action,
      RemoteFailure.badGateway         => l.error_bad_gateway_action,
      RemoteFailure.serviceUnavailable => l.error_service_unavailable_action,
      RemoteFailure.gatewayTimeout     => l.error_gateway_timeout_action,
      RemoteFailure.unknown            => l.error_unknown_action,
    };
  }

  IconData get icon => switch (this) {
    RemoteFailure.unauthorized       => Icons.lock_outline,
    RemoteFailure.tokenExpired       => Icons.lock_clock_outlined,
    RemoteFailure.invalidCredentials => Icons.lock_person_outlined,
    RemoteFailure.accountBlocked     => Icons.block,
    RemoteFailure.badRequest         => Icons.warning_amber_rounded,
    RemoteFailure.notFound           => Icons.search_off,
    RemoteFailure.conflict           => Icons.sync_problem_rounded,
    RemoteFailure.validationFailed   => Icons.rule,
    RemoteFailure.tooManyRequests    => Icons.speed,
    RemoteFailure.forbidden          => Icons.do_not_disturb_on_outlined,
    RemoteFailure.connectionTimeout  => Icons.timer_off,
    RemoteFailure.noInternet         => Icons.wifi_off_rounded,
    RemoteFailure.requestCancelled   => Icons.cancel_outlined,
    RemoteFailure.serverError        => Icons.dns_outlined,
    RemoteFailure.badGateway         => Icons.cloud_off,
    RemoteFailure.serviceUnavailable => Icons.cloud_sync_outlined,
    RemoteFailure.gatewayTimeout     => Icons.hourglass_empty,
    RemoteFailure.unknown            => Icons.error_outline,
  };

  bool get canRetry => switch (this) {
    RemoteFailure.connectionTimeout  => true,
    RemoteFailure.noInternet         => true,
    RemoteFailure.tooManyRequests    => true,
    RemoteFailure.serverError        => true,
    RemoteFailure.badGateway         => true,
    RemoteFailure.serviceUnavailable => true,
    RemoteFailure.gatewayTimeout     => true,
    _                                => false,
  };
  static RemoteFailure fromString(String? key) {
    return RemoteFailure.values.firstWhere(
      (e) => e.name == key,
      orElse: () => RemoteFailure.unknown,
    );
  }

  static RemoteFailure fromStatusCode(int code) {
    return switch (code) {
      400 => RemoteFailure.badRequest,
      401 => RemoteFailure.unauthorized,
      403 => RemoteFailure.forbidden,
      404 => RemoteFailure.notFound,
      408 => RemoteFailure.connectionTimeout,
      409 => RemoteFailure.conflict,
      422 => RemoteFailure.validationFailed,
      429 => RemoteFailure.tooManyRequests,
      500 => RemoteFailure.serverError,
      502 => RemoteFailure.badGateway,
      503 => RemoteFailure.serviceUnavailable,
      504 => RemoteFailure.gatewayTimeout,
      _   => RemoteFailure.unknown,
    };
  }
}