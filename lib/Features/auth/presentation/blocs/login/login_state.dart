
part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool rememberMe,

    ValidationKey? emailError,
    ValidationKey? passwordError,

    @Default(false) bool isLoading,
    @Default(false) bool isSuccess,
    LoginResponseModel? loginResponse,
    ApiErrorModel? error,
  }) = _LoginState;
}