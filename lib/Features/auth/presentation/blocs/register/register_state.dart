// register_state.dart

part of 'register_bloc.dart';

enum RegisterStep { form, otp }

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(RegisterStep.form) RegisterStep step,

    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default('') String phone,
    @Default(false) bool acceptTerms,

    ValidationKey? firstNameError,
    ValidationKey? lastNameError,
    ValidationKey? emailError,
    ValidationKey? passwordError,
    ValidationKey? confirmPasswordError,
    ValidationKey? phoneError,

    @Default(false) bool isFirstNameDirty,
    @Default(false) bool isLastNameDirty,
    @Default(false) bool isEmailDirty,
    @Default(false) bool isPasswordDirty,
    @Default(false) bool isConfirmPasswordDirty,
    @Default(false) bool isPhoneDirty,

    @Default('') String otp,
    ValidationKey? otpError,
    @Default(false) bool isOtpDirty,

    @Default(false) bool isLoading,
    @Default(false) bool isOtpLoading,
    @Default(false) bool isResendLoading,

    @Default(false) bool isRegisterSuccess,
    @Default(false) bool isOtpSuccess,
    @Default(false) bool isResendSuccess,

    LoginResponseModel? loginResponse,

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

  bool get isOtpFormValid =>
      otp.isNotEmpty && otpError == null;
}