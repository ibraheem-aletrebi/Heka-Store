
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/register_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/verify_email_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/core/utils/field_validator.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase _registerUseCase;
  final VerifyEmailOtpUseCase _verifyOtpUseCase;
  final ResendOtpUseCase _resendOtpUseCase;

  RegisterBloc({
    required RegisterUseCase registerUseCase,
    required VerifyEmailOtpUseCase verifyOtpUseCase,
    required ResendOtpUseCase resendOtpUseCase,
  })  : _registerUseCase = registerUseCase,
        _verifyOtpUseCase = verifyOtpUseCase,
        _resendOtpUseCase = resendOtpUseCase,
        super(const RegisterState()) {
    on<_FirstNameChanged>(_onFirstNameChanged);
    on<_LastNameChanged>(_onLastNameChanged);
    on<_EmailChanged>(_onEmailChanged);
    on<_PasswordChanged>(_onPasswordChanged);
    on<_ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<_PhoneChanged>(_onPhoneChanged);
    on<_AcceptTermsToggled>(_onAcceptTermsToggled);
    on<_Submitted>(_onSubmitted);
    on<_OtpChanged>(_onOtpChanged);
    on<_OtpSubmitted>(_onOtpSubmitted);
    on<_OtpResent>(_onOtpResent);
    on<_FlowReset>(_onFlowReset);
  }


  void _onFirstNameChanged(
    _FirstNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(
      firstName: event.firstName,
      isFirstNameDirty: true,
      firstNameError: FieldValidator.name(event.firstName),
      error: null,
    ));
  }

  void _onLastNameChanged(
    _LastNameChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(
      lastName: event.lastName,
      isLastNameDirty: true,
      lastNameError: FieldValidator.name(event.lastName),
      error: null,
    ));
  }

  void _onEmailChanged(
    _EmailChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(
      email: event.email,
      isEmailDirty: true,
      emailError: FieldValidator.email(event.email),
      error: null,
    ));
  }

  void _onPasswordChanged(
    _PasswordChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(
      password: event.password,
      isPasswordDirty: true,
      passwordError: FieldValidator.password(event.password),
      confirmPasswordError: state.isConfirmPasswordDirty
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
    Emitter<RegisterState> emit,
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

  void _onPhoneChanged(
    _PhoneChanged event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(
      phone: event.phone,
      isPhoneDirty: true,
      phoneError: FieldValidator.phone(event.phone),
      error: null,
    ));
  }

  void _onAcceptTermsToggled(
    _AcceptTermsToggled event,
    Emitter<RegisterState> emit,
  ) {
    emit(state.copyWith(acceptTerms: !state.acceptTerms));
  }

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<RegisterState> emit,
  ) async {
    final firstNameError = FieldValidator.name(state.firstName);
    final lastNameError = FieldValidator.name(state.lastName);
    final emailError = FieldValidator.email(state.email);
    final passwordError = FieldValidator.password(state.password);
    final confirmPasswordError = FieldValidator.confirmPassword(
      state.confirmPassword,
      state.password,
    );
    final phoneError = FieldValidator.phone(state.phone);

    if (firstNameError != null ||
        lastNameError != null ||
        emailError != null ||
        passwordError != null ||
        confirmPasswordError != null ||
        phoneError != null ||
        !state.acceptTerms) {
      emit(state.copyWith(
        firstNameError: firstNameError,
        lastNameError: lastNameError,
        emailError: emailError,
        passwordError: passwordError,
        confirmPasswordError: confirmPasswordError,
        phoneError: phoneError,
        isFirstNameDirty: true,
        isLastNameDirty: true,
        isEmailDirty: true,
        isPasswordDirty: true,
        isConfirmPasswordDirty: true,
        isPhoneDirty: true,
      ));
      return;
    }

    emit(state.copyWith(isLoading: true, error: null));

    final response = await _registerUseCase(
      firstName: state.firstName,
      lastName: state.lastName,
      email: state.email,
      password: state.password,
      confirmPassword: state.confirmPassword,
      phoneNumber: state.phone,
      acceptTerms: state.acceptTerms,
    );

    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isLoading: false,
        isRegisterSuccess: true,
        step: RegisterStep.otp,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }


  void _onOtpChanged(
    _OtpChanged event,
    Emitter<RegisterState> emit,
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
    Emitter<RegisterState> emit,
  ) async {
    final otpError = FieldValidator.otp(state.otp, length: 6);
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
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(isResendLoading: true, error: null));

    final response = await _resendOtpUseCase(email: state.email);

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


  void _onFlowReset(
    _FlowReset event,
    Emitter<RegisterState> emit,
  ) {
    emit(const RegisterState());
  }
}