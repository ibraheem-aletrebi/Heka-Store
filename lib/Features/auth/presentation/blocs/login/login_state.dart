// login_state.dart

part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    // ─── Fields ───────────────────────────────────────
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool rememberMe,
    // ─── Validation Errors ────────────────────────────
    ValidationKey? emailError,
    ValidationKey? passwordError,
    // ─── Status ───────────────────────────────────────
    @Default(false) bool isLoading,
    @Default(false) bool isGoogleLoading,
    @Default(false) bool isSuccess,
    // ─── Response ─────────────────────────────────────
    LoginResponseModel? loginResponse,
    // ─── API Error ────────────────────────────────────
    ApiErrorModel? error,
  }) = _LoginState;

  bool get isFormValid =>
      email.isNotEmpty &&
      password.isNotEmpty &&
      emailError == null &&
      passwordError == null;
}