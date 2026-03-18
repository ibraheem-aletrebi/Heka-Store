// verify_email_event.dart

part of 'verify_email_bloc.dart';

@freezed
sealed class VerifyEmailEvent with _$VerifyEmailEvent {
  const factory VerifyEmailEvent.otpChanged(String otp) = _OtpChanged;
  const factory VerifyEmailEvent.otpSubmitted() = _OtpSubmitted;
  const factory VerifyEmailEvent.otpResent() = _OtpResent;
}