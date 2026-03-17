// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ForgotPasswordEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestSubmittedImplCopyWith<$Res> {
  factory _$$RequestSubmittedImplCopyWith(_$RequestSubmittedImpl value,
          $Res Function(_$RequestSubmittedImpl) then) =
      __$$RequestSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$RequestSubmittedImpl>
    implements _$$RequestSubmittedImplCopyWith<$Res> {
  __$$RequestSubmittedImplCopyWithImpl(_$RequestSubmittedImpl _value,
      $Res Function(_$RequestSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestSubmittedImpl implements _RequestSubmitted {
  const _$RequestSubmittedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.requestSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return requestSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return requestSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (requestSubmitted != null) {
      return requestSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return requestSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return requestSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (requestSubmitted != null) {
      return requestSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RequestSubmitted implements ForgotPasswordEvent {
  const factory _RequestSubmitted() = _$RequestSubmittedImpl;
}

/// @nodoc
abstract class _$$OtpChangedImplCopyWith<$Res> {
  factory _$$OtpChangedImplCopyWith(
          _$OtpChangedImpl value, $Res Function(_$OtpChangedImpl) then) =
      __$$OtpChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$OtpChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$OtpChangedImpl>
    implements _$$OtpChangedImplCopyWith<$Res> {
  __$$OtpChangedImplCopyWithImpl(
      _$OtpChangedImpl _value, $Res Function(_$OtpChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$OtpChangedImpl(
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpChangedImpl implements _OtpChanged {
  const _$OtpChangedImpl(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpChangedImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpChangedImplCopyWith<_$OtpChangedImpl> get copyWith =>
      __$$OtpChangedImplCopyWithImpl<_$OtpChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements ForgotPasswordEvent {
  const factory _OtpChanged(final String otp) = _$OtpChangedImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$OtpChangedImplCopyWith<_$OtpChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpSubmittedImplCopyWith<$Res> {
  factory _$$OtpSubmittedImplCopyWith(
          _$OtpSubmittedImpl value, $Res Function(_$OtpSubmittedImpl) then) =
      __$$OtpSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$OtpSubmittedImpl>
    implements _$$OtpSubmittedImplCopyWith<$Res> {
  __$$OtpSubmittedImplCopyWithImpl(
      _$OtpSubmittedImpl _value, $Res Function(_$OtpSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpSubmittedImpl implements _OtpSubmitted {
  const _$OtpSubmittedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return otpSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return otpSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return otpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return otpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmitted implements ForgotPasswordEvent {
  const factory _OtpSubmitted() = _$OtpSubmittedImpl;
}

/// @nodoc
abstract class _$$OtpResentImplCopyWith<$Res> {
  factory _$$OtpResentImplCopyWith(
          _$OtpResentImpl value, $Res Function(_$OtpResentImpl) then) =
      __$$OtpResentImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpResentImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$OtpResentImpl>
    implements _$$OtpResentImplCopyWith<$Res> {
  __$$OtpResentImplCopyWithImpl(
      _$OtpResentImpl _value, $Res Function(_$OtpResentImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpResentImpl implements _OtpResent {
  const _$OtpResentImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpResent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpResentImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return otpResent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return otpResent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return otpResent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return otpResent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(this);
    }
    return orElse();
  }
}

abstract class _OtpResent implements ForgotPasswordEvent {
  const factory _OtpResent() = _$OtpResentImpl;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'ForgotPasswordEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements ForgotPasswordEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedImplCopyWith(
          _$ConfirmPasswordChangedImpl value,
          $Res Function(_$ConfirmPasswordChangedImpl) then) =
      __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPassword});
}

/// @nodoc
class __$$ConfirmPasswordChangedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$ConfirmPasswordChangedImpl>
    implements _$$ConfirmPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmPasswordChangedImplCopyWithImpl(
      _$ConfirmPasswordChangedImpl _value,
      $Res Function(_$ConfirmPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPassword = null,
  }) {
    return _then(_$ConfirmPasswordChangedImpl(
      null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChangedImpl implements _ConfirmPasswordChanged {
  const _$ConfirmPasswordChangedImpl(this.confirmPassword);

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ForgotPasswordEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChangedImpl &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => __$$ConfirmPasswordChangedImplCopyWithImpl<
          _$ConfirmPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements ForgotPasswordEvent {
  const factory _ConfirmPasswordChanged(final String confirmPassword) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSubmittedImplCopyWith<$Res> {
  factory _$$ResetSubmittedImplCopyWith(_$ResetSubmittedImpl value,
          $Res Function(_$ResetSubmittedImpl) then) =
      __$$ResetSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSubmittedImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$ResetSubmittedImpl>
    implements _$$ResetSubmittedImplCopyWith<$Res> {
  __$$ResetSubmittedImplCopyWithImpl(
      _$ResetSubmittedImpl _value, $Res Function(_$ResetSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetSubmittedImpl implements _ResetSubmitted {
  const _$ResetSubmittedImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.resetSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return resetSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return resetSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (resetSubmitted != null) {
      return resetSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return resetSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return resetSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (resetSubmitted != null) {
      return resetSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ResetSubmitted implements ForgotPasswordEvent {
  const factory _ResetSubmitted() = _$ResetSubmittedImpl;
}

/// @nodoc
abstract class _$$FlowResetImplCopyWith<$Res> {
  factory _$$FlowResetImplCopyWith(
          _$FlowResetImpl value, $Res Function(_$FlowResetImpl) then) =
      __$$FlowResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlowResetImplCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$FlowResetImpl>
    implements _$$FlowResetImplCopyWith<$Res> {
  __$$FlowResetImplCopyWithImpl(
      _$FlowResetImpl _value, $Res Function(_$FlowResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FlowResetImpl implements _FlowReset {
  const _$FlowResetImpl();

  @override
  String toString() {
    return 'ForgotPasswordEvent.flowReset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FlowResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() requestSubmitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() resetSubmitted,
    required TResult Function() flowReset,
  }) {
    return flowReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function()? requestSubmitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function()? resetSubmitted,
    TResult? Function()? flowReset,
  }) {
    return flowReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? requestSubmitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? resetSubmitted,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (flowReset != null) {
      return flowReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_RequestSubmitted value) requestSubmitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ResetSubmitted value) resetSubmitted,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return flowReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_RequestSubmitted value)? requestSubmitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_ResetSubmitted value)? resetSubmitted,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return flowReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_RequestSubmitted value)? requestSubmitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ResetSubmitted value)? resetSubmitted,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (flowReset != null) {
      return flowReset(this);
    }
    return orElse();
  }
}

abstract class _FlowReset implements ForgotPasswordEvent {
  const factory _FlowReset() = _$FlowResetImpl;
}

/// @nodoc
mixin _$ForgotPasswordState {
// ─── Navigation ───────────────────────────────────
  ForgotPasswordStep get step =>
      throw _privateConstructorUsedError; // ─── Fields ───────────────────────────────────────
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword =>
      throw _privateConstructorUsedError; // ─── Validation ───────────────────────────────────
  ValidationKey? get emailError => throw _privateConstructorUsedError;
  ValidationKey? get otpError => throw _privateConstructorUsedError;
  ValidationKey? get passwordError => throw _privateConstructorUsedError;
  ValidationKey? get confirmPasswordError =>
      throw _privateConstructorUsedError; // ─── Dirty ────────────────────────────────────────
  bool get isEmailDirty => throw _privateConstructorUsedError;
  bool get isOtpDirty => throw _privateConstructorUsedError;
  bool get isPasswordDirty => throw _privateConstructorUsedError;
  bool get isConfirmPasswordDirty =>
      throw _privateConstructorUsedError; // ─── Loading ──────────────────────────────────────
  bool get isRequestLoading => throw _privateConstructorUsedError;
  bool get isOtpLoading => throw _privateConstructorUsedError;
  bool get isResendLoading => throw _privateConstructorUsedError;
  bool get isResetLoading =>
      throw _privateConstructorUsedError; // ─── Success ──────────────────────────────────────
  bool get isRequestSuccess => throw _privateConstructorUsedError;
  bool get isOtpSuccess => throw _privateConstructorUsedError;
  bool get isResendSuccess => throw _privateConstructorUsedError;
  bool get isResetSuccess =>
      throw _privateConstructorUsedError; // ─── Error ────────────────────────────────────────
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call(
      {ForgotPasswordStep step,
      String email,
      String otp,
      String password,
      String confirmPassword,
      ValidationKey? emailError,
      ValidationKey? otpError,
      ValidationKey? passwordError,
      ValidationKey? confirmPasswordError,
      bool isEmailDirty,
      bool isOtpDirty,
      bool isPasswordDirty,
      bool isConfirmPasswordDirty,
      bool isRequestLoading,
      bool isOtpLoading,
      bool isResendLoading,
      bool isResetLoading,
      bool isRequestSuccess,
      bool isOtpSuccess,
      bool isResendSuccess,
      bool isResetSuccess,
      ApiErrorModel? error});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? emailError = freezed,
    Object? otpError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? isEmailDirty = null,
    Object? isOtpDirty = null,
    Object? isPasswordDirty = null,
    Object? isConfirmPasswordDirty = null,
    Object? isRequestLoading = null,
    Object? isOtpLoading = null,
    Object? isResendLoading = null,
    Object? isResetLoading = null,
    Object? isRequestSuccess = null,
    Object? isOtpSuccess = null,
    Object? isResendSuccess = null,
    Object? isResetSuccess = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStep,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      otpError: freezed == otpError
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _value.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isEmailDirty: null == isEmailDirty
          ? _value.isEmailDirty
          : isEmailDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpDirty: null == isOtpDirty
          ? _value.isOtpDirty
          : isOtpDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordDirty: null == isPasswordDirty
          ? _value.isPasswordDirty
          : isPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordDirty: null == isConfirmPasswordDirty
          ? _value.isConfirmPasswordDirty
          : isConfirmPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestLoading: null == isRequestLoading
          ? _value.isRequestLoading
          : isRequestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpLoading: null == isOtpLoading
          ? _value.isOtpLoading
          : isOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendLoading: null == isResendLoading
          ? _value.isResendLoading
          : isResendLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetLoading: null == isResetLoading
          ? _value.isResetLoading
          : isResetLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestSuccess: null == isRequestSuccess
          ? _value.isRequestSuccess
          : isRequestSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpSuccess: null == isOtpSuccess
          ? _value.isOtpSuccess
          : isOtpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendSuccess: null == isResendSuccess
          ? _value.isResendSuccess
          : isResendSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetSuccess: null == isResetSuccess
          ? _value.isResetSuccess
          : isResetSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgotPasswordStateImplCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$ForgotPasswordStateImplCopyWith(_$ForgotPasswordStateImpl value,
          $Res Function(_$ForgotPasswordStateImpl) then) =
      __$$ForgotPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ForgotPasswordStep step,
      String email,
      String otp,
      String password,
      String confirmPassword,
      ValidationKey? emailError,
      ValidationKey? otpError,
      ValidationKey? passwordError,
      ValidationKey? confirmPasswordError,
      bool isEmailDirty,
      bool isOtpDirty,
      bool isPasswordDirty,
      bool isConfirmPasswordDirty,
      bool isRequestLoading,
      bool isOtpLoading,
      bool isResendLoading,
      bool isResetLoading,
      bool isRequestSuccess,
      bool isOtpSuccess,
      bool isResendSuccess,
      bool isResetSuccess,
      ApiErrorModel? error});
}

/// @nodoc
class __$$ForgotPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$ForgotPasswordStateImpl>
    implements _$$ForgotPasswordStateImplCopyWith<$Res> {
  __$$ForgotPasswordStateImplCopyWithImpl(_$ForgotPasswordStateImpl _value,
      $Res Function(_$ForgotPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? emailError = freezed,
    Object? otpError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? isEmailDirty = null,
    Object? isOtpDirty = null,
    Object? isPasswordDirty = null,
    Object? isConfirmPasswordDirty = null,
    Object? isRequestLoading = null,
    Object? isOtpLoading = null,
    Object? isResendLoading = null,
    Object? isResetLoading = null,
    Object? isRequestSuccess = null,
    Object? isOtpSuccess = null,
    Object? isResendSuccess = null,
    Object? isResetSuccess = null,
    Object? error = freezed,
  }) {
    return _then(_$ForgotPasswordStateImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordStep,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      otpError: freezed == otpError
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _value.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isEmailDirty: null == isEmailDirty
          ? _value.isEmailDirty
          : isEmailDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpDirty: null == isOtpDirty
          ? _value.isOtpDirty
          : isOtpDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordDirty: null == isPasswordDirty
          ? _value.isPasswordDirty
          : isPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordDirty: null == isConfirmPasswordDirty
          ? _value.isConfirmPasswordDirty
          : isConfirmPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestLoading: null == isRequestLoading
          ? _value.isRequestLoading
          : isRequestLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpLoading: null == isOtpLoading
          ? _value.isOtpLoading
          : isOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendLoading: null == isResendLoading
          ? _value.isResendLoading
          : isResendLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetLoading: null == isResetLoading
          ? _value.isResetLoading
          : isResetLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRequestSuccess: null == isRequestSuccess
          ? _value.isRequestSuccess
          : isRequestSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpSuccess: null == isOtpSuccess
          ? _value.isOtpSuccess
          : isOtpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendSuccess: null == isResendSuccess
          ? _value.isResendSuccess
          : isResendSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isResetSuccess: null == isResetSuccess
          ? _value.isResetSuccess
          : isResetSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordStateImpl extends _ForgotPasswordState {
  const _$ForgotPasswordStateImpl(
      {this.step = ForgotPasswordStep.request,
      this.email = '',
      this.otp = '',
      this.password = '',
      this.confirmPassword = '',
      this.emailError,
      this.otpError,
      this.passwordError,
      this.confirmPasswordError,
      this.isEmailDirty = false,
      this.isOtpDirty = false,
      this.isPasswordDirty = false,
      this.isConfirmPasswordDirty = false,
      this.isRequestLoading = false,
      this.isOtpLoading = false,
      this.isResendLoading = false,
      this.isResetLoading = false,
      this.isRequestSuccess = false,
      this.isOtpSuccess = false,
      this.isResendSuccess = false,
      this.isResetSuccess = false,
      this.error})
      : super._();

// ─── Navigation ───────────────────────────────────
  @override
  @JsonKey()
  final ForgotPasswordStep step;
// ─── Fields ───────────────────────────────────────
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String otp;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
// ─── Validation ───────────────────────────────────
  @override
  final ValidationKey? emailError;
  @override
  final ValidationKey? otpError;
  @override
  final ValidationKey? passwordError;
  @override
  final ValidationKey? confirmPasswordError;
// ─── Dirty ────────────────────────────────────────
  @override
  @JsonKey()
  final bool isEmailDirty;
  @override
  @JsonKey()
  final bool isOtpDirty;
  @override
  @JsonKey()
  final bool isPasswordDirty;
  @override
  @JsonKey()
  final bool isConfirmPasswordDirty;
// ─── Loading ──────────────────────────────────────
  @override
  @JsonKey()
  final bool isRequestLoading;
  @override
  @JsonKey()
  final bool isOtpLoading;
  @override
  @JsonKey()
  final bool isResendLoading;
  @override
  @JsonKey()
  final bool isResetLoading;
// ─── Success ──────────────────────────────────────
  @override
  @JsonKey()
  final bool isRequestSuccess;
  @override
  @JsonKey()
  final bool isOtpSuccess;
  @override
  @JsonKey()
  final bool isResendSuccess;
  @override
  @JsonKey()
  final bool isResetSuccess;
// ─── Error ────────────────────────────────────────
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'ForgotPasswordState(step: $step, email: $email, otp: $otp, password: $password, confirmPassword: $confirmPassword, emailError: $emailError, otpError: $otpError, passwordError: $passwordError, confirmPasswordError: $confirmPasswordError, isEmailDirty: $isEmailDirty, isOtpDirty: $isOtpDirty, isPasswordDirty: $isPasswordDirty, isConfirmPasswordDirty: $isConfirmPasswordDirty, isRequestLoading: $isRequestLoading, isOtpLoading: $isOtpLoading, isResendLoading: $isResendLoading, isResetLoading: $isResetLoading, isRequestSuccess: $isRequestSuccess, isOtpSuccess: $isOtpSuccess, isResendSuccess: $isResendSuccess, isResetSuccess: $isResetSuccess, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordStateImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.otpError, otpError) ||
                other.otpError == otpError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.confirmPasswordError, confirmPasswordError) ||
                other.confirmPasswordError == confirmPasswordError) &&
            (identical(other.isEmailDirty, isEmailDirty) ||
                other.isEmailDirty == isEmailDirty) &&
            (identical(other.isOtpDirty, isOtpDirty) ||
                other.isOtpDirty == isOtpDirty) &&
            (identical(other.isPasswordDirty, isPasswordDirty) ||
                other.isPasswordDirty == isPasswordDirty) &&
            (identical(other.isConfirmPasswordDirty, isConfirmPasswordDirty) ||
                other.isConfirmPasswordDirty == isConfirmPasswordDirty) &&
            (identical(other.isRequestLoading, isRequestLoading) ||
                other.isRequestLoading == isRequestLoading) &&
            (identical(other.isOtpLoading, isOtpLoading) ||
                other.isOtpLoading == isOtpLoading) &&
            (identical(other.isResendLoading, isResendLoading) ||
                other.isResendLoading == isResendLoading) &&
            (identical(other.isResetLoading, isResetLoading) ||
                other.isResetLoading == isResetLoading) &&
            (identical(other.isRequestSuccess, isRequestSuccess) ||
                other.isRequestSuccess == isRequestSuccess) &&
            (identical(other.isOtpSuccess, isOtpSuccess) ||
                other.isOtpSuccess == isOtpSuccess) &&
            (identical(other.isResendSuccess, isResendSuccess) ||
                other.isResendSuccess == isResendSuccess) &&
            (identical(other.isResetSuccess, isResetSuccess) ||
                other.isResetSuccess == isResetSuccess) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        step,
        email,
        otp,
        password,
        confirmPassword,
        emailError,
        otpError,
        passwordError,
        confirmPasswordError,
        isEmailDirty,
        isOtpDirty,
        isPasswordDirty,
        isConfirmPasswordDirty,
        isRequestLoading,
        isOtpLoading,
        isResendLoading,
        isResetLoading,
        isRequestSuccess,
        isOtpSuccess,
        isResendSuccess,
        isResetSuccess,
        error
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      __$$ForgotPasswordStateImplCopyWithImpl<_$ForgotPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgotPasswordState extends ForgotPasswordState {
  const factory _ForgotPasswordState(
      {final ForgotPasswordStep step,
      final String email,
      final String otp,
      final String password,
      final String confirmPassword,
      final ValidationKey? emailError,
      final ValidationKey? otpError,
      final ValidationKey? passwordError,
      final ValidationKey? confirmPasswordError,
      final bool isEmailDirty,
      final bool isOtpDirty,
      final bool isPasswordDirty,
      final bool isConfirmPasswordDirty,
      final bool isRequestLoading,
      final bool isOtpLoading,
      final bool isResendLoading,
      final bool isResetLoading,
      final bool isRequestSuccess,
      final bool isOtpSuccess,
      final bool isResendSuccess,
      final bool isResetSuccess,
      final ApiErrorModel? error}) = _$ForgotPasswordStateImpl;
  const _ForgotPasswordState._() : super._();

  @override // ─── Navigation ───────────────────────────────────
  ForgotPasswordStep get step;
  @override // ─── Fields ───────────────────────────────────────
  String get email;
  @override
  String get otp;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override // ─── Validation ───────────────────────────────────
  ValidationKey? get emailError;
  @override
  ValidationKey? get otpError;
  @override
  ValidationKey? get passwordError;
  @override
  ValidationKey? get confirmPasswordError;
  @override // ─── Dirty ────────────────────────────────────────
  bool get isEmailDirty;
  @override
  bool get isOtpDirty;
  @override
  bool get isPasswordDirty;
  @override
  bool get isConfirmPasswordDirty;
  @override // ─── Loading ──────────────────────────────────────
  bool get isRequestLoading;
  @override
  bool get isOtpLoading;
  @override
  bool get isResendLoading;
  @override
  bool get isResetLoading;
  @override // ─── Success ──────────────────────────────────────
  bool get isRequestSuccess;
  @override
  bool get isOtpSuccess;
  @override
  bool get isResendSuccess;
  @override
  bool get isResetSuccess;
  @override // ─── Error ────────────────────────────────────────
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$ForgotPasswordStateImplCopyWith<_$ForgotPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
