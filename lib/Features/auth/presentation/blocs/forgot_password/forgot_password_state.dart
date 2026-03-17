// forgot_password_state.dart

part of 'forgot_password_bloc.dart';

enum ForgotPasswordStep { request, otp, resetPassword }

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default(ForgotPasswordStep.request) ForgotPasswordStep step,

    @Default('') String email,
    @Default('') String otp,
    @Default('') String password,
    @Default('') String confirmPassword,

    ValidationKey? emailError,
    ValidationKey? otpError,
    ValidationKey? passwordError,
    ValidationKey? confirmPasswordError,

    @Default(false) bool isEmailDirty,
    @Default(false) bool isOtpDirty,
    @Default(false) bool isPasswordDirty,
    @Default(false) bool isConfirmPasswordDirty,

    @Default(false) bool isRequestLoading,
    @Default(false) bool isOtpLoading,
    @Default(false) bool isResendLoading,
    @Default(false) bool isResetLoading,

    @Default(false) bool isRequestSuccess,
    @Default(false) bool isOtpSuccess,
    @Default(false) bool isResendSuccess,
    @Default(false) bool isResetSuccess,

    ApiErrorModel? error,
  }) = _ForgotPasswordState;

  const ForgotPasswordState._();

  bool get isRequestFormValid =>
      email.isNotEmpty && emailError == null;

  bool get isOtpFormValid =>
      otp.isNotEmpty && otpError == null;

  bool get isResetFormValid =>
      password.isNotEmpty &&
      confirmPassword.isNotEmpty &&
      passwordError == null &&
      confirmPasswordError == null;
}