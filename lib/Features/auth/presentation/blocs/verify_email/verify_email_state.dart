// verify_email_state.dart

part of 'verify_email_bloc.dart';

@freezed
class VerifyEmailState with _$VerifyEmailState {
  const factory VerifyEmailState({
    @Default('') String otp,
    ValidationKey? otpError,
    @Default(false) bool isOtpDirty,

    @Default(false) bool isOtpLoading,
    @Default(false) bool isResendLoading,

    @Default(false) bool isOtpSuccess,
    @Default(false) bool isResendSuccess,

    LoginResponseModel? loginResponse,

    ApiErrorModel? error,
  }) = _VerifyEmailState;

  const VerifyEmailState._();

  bool get isFormValid => otp.isNotEmpty && otpError == null;
}