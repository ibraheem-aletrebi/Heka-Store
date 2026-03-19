import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/core/utils/field_validator.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc({required LoginUseCase loginUseCase})
    : _loginUseCase = loginUseCase,
      super(const LoginState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_RememberMeToggled>(_onRememberMeToggled);
    on<_Submitted>(_onSubmitted);
    on<_GoogleSignInSubmitted>(_onGoogleSignInSubmitted);
  }

  void _onEmailChanged(_EmailChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
        emailError: FieldValidator.email(event.email),
      ),
    );
  }

  void _onPasswordChanged(_PasswordChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
        passwordError: FieldValidator.password(event.password),
      ),
    );
  }

  void _onRememberMeToggled(
    _RememberMeToggled event,
    Emitter<LoginState> emit,
  ) {
    emit(state.copyWith(rememberMe: !state.rememberMe));
  }

  Future<void> _onSubmitted(_Submitted event, Emitter<LoginState> emit) async {
    final emailError = FieldValidator.email(state.email);
    final passwordError = FieldValidator.password(state.password);

    if (emailError != null || passwordError != null) {
      emit(
        state.copyWith(emailError: emailError, passwordError: passwordError),
      );
      return;
    }

    emit(state.copyWith(isLoading: true));

    final response = await _loginUseCase(
      LoginRequestModel(
        email: state.email,
        password: state.password,
        rememberMe: state.rememberMe,
      ),
    );
    response.when(
      onSuccess: (data) => emit(
        state.copyWith(
          isLoading: false,
          isSuccess: true,
          loginResponse: data,
          error: null,
        ),
      ),
      onError: (error) => emit(
        state.copyWith(isLoading: false, isSuccess: false, error: error),
      ),
    );
  }

  Future<void> _onGoogleSignInSubmitted(
    _GoogleSignInSubmitted event,
    Emitter<LoginState> emit,
  ) async {}
}
