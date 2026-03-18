// register_event.dart

part of 'register_bloc.dart';

@freezed
sealed class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.firstNameChanged(String firstName) = _FirstNameChanged;
  const factory RegisterEvent.lastNameChanged(String lastName) = _LastNameChanged;
  const factory RegisterEvent.emailChanged(String email) = _EmailChanged;
  const factory RegisterEvent.passwordChanged(String password) = _PasswordChanged;
  const factory RegisterEvent.confirmPasswordChanged(String confirmPassword) = _ConfirmPasswordChanged;
  const factory RegisterEvent.phoneChanged(String phone) = _PhoneChanged;
  const factory RegisterEvent.acceptTermsToggled() = _AcceptTermsToggled;
  const factory RegisterEvent.submitted() = _Submitted;
}