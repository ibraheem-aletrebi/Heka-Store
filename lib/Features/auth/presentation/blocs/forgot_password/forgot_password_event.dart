
part of 'forgot_password_bloc.dart';

@freezed
sealed class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.emailChanged(String email) = _EmailChanged;
  const factory ForgotPasswordEvent.requestSubmitted() = _RequestSubmitted;

  const factory ForgotPasswordEvent.otpChanged(String otp) = _OtpChanged;
  const factory ForgotPasswordEvent.otpSubmitted() = _OtpSubmitted;
  const factory ForgotPasswordEvent.otpResent() = _OtpResent;

  const factory ForgotPasswordEvent.passwordChanged(String password) = _PasswordChanged;
  const factory ForgotPasswordEvent.confirmPasswordChanged(String confirmPassword) = _ConfirmPasswordChanged;
  const factory ForgotPasswordEvent.resetSubmitted() = _ResetSubmitted;

  const factory ForgotPasswordEvent.flowReset() = _FlowReset;
}