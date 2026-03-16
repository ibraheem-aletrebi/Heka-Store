
part of 'login_bloc.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String email) = _EmailChanged;
  const factory LoginEvent.passwordChanged(String password) = _PasswordChanged;
  const factory LoginEvent.rememberMeToggled() = _RememberMeToggled;
  const factory LoginEvent.submitted() = _Submitted;
  const factory LoginEvent.googleSignInSubmitted() = _GoogleSignInSubmitted;
}