
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/forgot_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/reset_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/verify_otp_use_case.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/core/utils/field_validator.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;
  final ResendOtpUseCase _resendOtpUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;

  ForgotPasswordBloc({
    required ForgotPasswordUseCase forgotPasswordUseCase,
    required VerifyOtpUseCase verifyOtpUseCase,
    required ResendOtpUseCase resendOtpUseCase,
    required ResetPasswordUseCase resetPasswordUseCase,
  })  : _forgotPasswordUseCase = forgotPasswordUseCase,
        _verifyOtpUseCase = verifyOtpUseCase,
        _resendOtpUseCase = resendOtpUseCase,
        _resetPasswordUseCase = resetPasswordUseCase,
        super(const ForgotPasswordState()) {
    on<_EmailChanged>(_onEmailChanged);
    on<_RequestSubmitted>(_onRequestSubmitted);
    on<_OtpChanged>(_onOtpChanged);
    on<_OtpSubmitted>(_onOtpSubmitted);
    on<_OtpResent>(_onOtpResent);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<_ResetSubmitted>(_onResetSubmitted);
    on<_FlowReset>(_onFlowReset);
  }


  void _onEmailChanged(
    _EmailChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      email: event.email,
      isEmailDirty: true,
      emailError: FieldValidator.email(event.email),
      error: null,
    ));
  }

  Future<void> _onRequestSubmitted(
    _RequestSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    final emailError = FieldValidator.email(state.email);
    if (emailError != null) {
      emit(state.copyWith(emailError: emailError, isEmailDirty: true));
      return;
    }

    emit(state.copyWith(isRequestLoading: true, error: null));

    final response = await _forgotPasswordUseCase(email: state.email);
    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isRequestLoading: false,
        isRequestSuccess: true,
        step: ForgotPasswordStep.otp,
      )),
      onError: (error) => emit(state.copyWith(
        isRequestLoading: false,
        error: error,
      )),
    );
  }


  void _onOtpChanged(
    _OtpChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      otp: event.otp,
      isOtpDirty: true,
      otpError: FieldValidator.required(event.otp),
      error: null,
    ));
  }

  Future<void> _onOtpSubmitted(
    _OtpSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    final otpError = FieldValidator.required(state.otp);
    if (otpError != null) {
      emit(state.copyWith(otpError: otpError, isOtpDirty: true));
      return;
    }

    emit(state.copyWith(isOtpLoading: true, error: null));

    final response = await _verifyOtpUseCase(
      email: state.email,
      code: state.otp,
    );
    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isOtpLoading: false,
        isOtpSuccess: true,
        step: ForgotPasswordStep.resetPassword,
      )),
      onError: (error) => emit(state.copyWith(
        isOtpLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onOtpResent(
    _OtpResent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(isResendLoading: true, error: null));

    final response = await _resendOtpUseCase(email: state.email);
    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isResendLoading: false,
        isResendSuccess: true,
        otp: '',
        isOtpDirty: false,
      )),
      onError: (error) => emit(state.copyWith(
        isResendLoading: false,
        error: error,
      )),
    );
  }


  void _onPasswordChanged(
    _PasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
      isPasswordDirty: true,
      passwordError: FieldValidator.password(event.password),
      confirmPasswordError: state.confirmPassword.isNotEmpty
          ? FieldValidator.confirmPassword(
              state.confirmPassword,
              event.password,
            )
          : null,
      error: null,
    ));
  }

  void _onConfirmPasswordChanged(
    _ConfirmPasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(state.copyWith(
      confirmPassword: event.confirmPassword,
      isConfirmPasswordDirty: true,
      confirmPasswordError: FieldValidator.confirmPassword(
        event.confirmPassword,
        state.password,
      ),
      error: null,
    ));
  }

  Future<void> _onResetSubmitted(
    _ResetSubmitted event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    final passwordError = FieldValidator.password(state.password);
    final confirmPasswordError = FieldValidator.confirmPassword(
      state.confirmPassword,
      state.password,
    );

    if (passwordError != null || confirmPasswordError != null) {
      emit(state.copyWith(
        passwordError: passwordError,
        confirmPasswordError: confirmPasswordError,
        isPasswordDirty: true,
        isConfirmPasswordDirty: true,
      ));
      return;
    }

    emit(state.copyWith(isResetLoading: true, error: null));

    final response = await _resetPasswordUseCase(
      email: state.email,
      code: state.otp,
      newPassword: state.password,
      confirmPassword: state.confirmPassword,
    );
    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isResetLoading: false,
        isResetSuccess: true,
      )),
      onError: (error) => emit(state.copyWith(
        isResetLoading: false,
        error: error,
      )),
    );
  }


  void _onFlowReset(
    _FlowReset event,
    Emitter<ForgotPasswordState> emit,
  ) {
    emit(const ForgotPasswordState());
  }
}