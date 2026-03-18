// register_state.dart

part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    // ─── Fields ───────────────────────────────────────
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String phone,
    @Default(false) bool acceptTerms,

    // ─── Validation ───────────────────────────────────
    ValidationKey? firstNameError,
    ValidationKey? lastNameError,
    ValidationKey? emailError,
    ValidationKey? passwordError,
    ValidationKey? confirmPasswordError,
    ValidationKey? phoneError,

    // ─── Dirty ────────────────────────────────────────
    @Default(false) bool isFirstNameDirty,
    @Default(false) bool isLastNameDirty,
    @Default(false) bool isEmailDirty,
    @Default(false) bool isPasswordDirty,
    @Default(false) bool isConfirmPasswordDirty,
    @Default(false) bool isPhoneDirty,

    // ─── Submission ───────────────────────────────────
    @Default(false) bool isLoading,
    @Default(false) bool isRegisterSuccess,
    ApiErrorModel? error,
  }) = _RegisterState;

  const RegisterState._();

  bool get isFormValid =>
      firstName.isNotEmpty &&
      lastName.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      confirmPassword.isNotEmpty &&
      phone.isNotEmpty &&
      acceptTerms &&
      firstNameError == null &&
      lastNameError == null &&
      emailError == null &&
      passwordError == null &&
      confirmPasswordError == null &&
      phoneError == null;
}