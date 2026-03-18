
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/verify_email_otp_use_case.dart';

import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/core/utils/field_validator.dart';

part 'verify_email_event.dart';
part 'verify_email_state.dart';
part 'verify_email_bloc.freezed.dart';

class VerifyEmailBloc extends Bloc<VerifyEmailEvent, VerifyEmailState> {
  final VerifyEmailOtpUseCase _verifyOtpUseCase;
  final ResendOtpUseCase _resendOtpUseCase;
  final String email;

  VerifyEmailBloc({
    required VerifyEmailOtpUseCase verifyOtpUseCase,
    required ResendOtpUseCase resendOtpUseCase,
    required this.email,
  })  : _verifyOtpUseCase = verifyOtpUseCase,
        _resendOtpUseCase = resendOtpUseCase,
        super(const VerifyEmailState()) {
    on<_OtpChanged>(_onOtpChanged);
    on<_OtpSubmitted>(_onOtpSubmitted);
    on<_OtpResent>(_onOtpResent);
  }


  void _onOtpChanged(
    _OtpChanged event,
    Emitter<VerifyEmailState> emit,
  ) {
    emit(state.copyWith(
      otp: event.otp,
      isOtpDirty: true,
      otpError: FieldValidator.otp(event.otp, length: 6),
      error: null,
    ));
  }

  Future<void> _onOtpSubmitted(
    _OtpSubmitted event,
    Emitter<VerifyEmailState> emit,
  ) async {
    final otpError = FieldValidator.otp(state.otp, length: 6);
    if (otpError != null) {
      emit(state.copyWith(otpError: otpError, isOtpDirty: true));
      return;
    }

    emit(state.copyWith(isOtpLoading: true, error: null));

    final response = await _verifyOtpUseCase(
      email: email,
      code: state.otp,
    );

    response.when(
      onSuccess: (loginResponse) => emit(state.copyWith(
        isOtpLoading: false,
        isOtpSuccess: true,
        loginResponse: loginResponse,
      )),
      onError: (error) => emit(state.copyWith(
        isOtpLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onOtpResent(
    _OtpResent event,
    Emitter<VerifyEmailState> emit,
  ) async {
    emit(state.copyWith(isResendLoading: true, error: null));

    final response = await _resendOtpUseCase(email: email);

    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isResendLoading: false,
        isResendSuccess: true,
        otp: '',
        isOtpDirty: false,
        otpError: null,
      )),
      onError: (error) => emit(state.copyWith(
        isResendLoading: false,
        error: error,
      )),
    );
  }
}