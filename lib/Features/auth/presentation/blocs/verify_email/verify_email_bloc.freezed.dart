// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyEmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailEventCopyWith<$Res> {
  factory $VerifyEmailEventCopyWith(
          VerifyEmailEvent value, $Res Function(VerifyEmailEvent) then) =
      _$VerifyEmailEventCopyWithImpl<$Res, VerifyEmailEvent>;
}

/// @nodoc
class _$VerifyEmailEventCopyWithImpl<$Res, $Val extends VerifyEmailEvent>
    implements $VerifyEmailEventCopyWith<$Res> {
  _$VerifyEmailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
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
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$OtpChangedImpl>
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
    return 'VerifyEmailEvent.otpChanged(otp: $otp)';
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
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements VerifyEmailEvent {
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
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$OtpSubmittedImpl>
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
    return 'VerifyEmailEvent.otpSubmitted()';
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
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
  }) {
    return otpSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
  }) {
    return otpSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
  }) {
    return otpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
  }) {
    return otpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmitted implements VerifyEmailEvent {
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
    extends _$VerifyEmailEventCopyWithImpl<$Res, _$OtpResentImpl>
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
    return 'VerifyEmailEvent.otpResent()';
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
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
  }) {
    return otpResent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
  }) {
    return otpResent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
  }) {
    return otpResent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
  }) {
    return otpResent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(this);
    }
    return orElse();
  }
}

abstract class _OtpResent implements VerifyEmailEvent {
  const factory _OtpResent() = _$OtpResentImpl;
}

/// @nodoc
mixin _$VerifyEmailState {
  String get otp => throw _privateConstructorUsedError;
  ValidationKey? get otpError => throw _privateConstructorUsedError;
  bool get isOtpDirty => throw _privateConstructorUsedError;
  bool get isOtpLoading => throw _privateConstructorUsedError;
  bool get isResendLoading => throw _privateConstructorUsedError;
  bool get isOtpSuccess => throw _privateConstructorUsedError;
  bool get isResendSuccess => throw _privateConstructorUsedError;
  LoginResponseModel? get loginResponse => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyEmailStateCopyWith<VerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyEmailStateCopyWith<$Res> {
  factory $VerifyEmailStateCopyWith(
          VerifyEmailState value, $Res Function(VerifyEmailState) then) =
      _$VerifyEmailStateCopyWithImpl<$Res, VerifyEmailState>;
  @useResult
  $Res call(
      {String otp,
      ValidationKey? otpError,
      bool isOtpDirty,
      bool isOtpLoading,
      bool isResendLoading,
      bool isOtpSuccess,
      bool isResendSuccess,
      LoginResponseModel? loginResponse,
      ApiErrorModel? error});
}

/// @nodoc
class _$VerifyEmailStateCopyWithImpl<$Res, $Val extends VerifyEmailState>
    implements $VerifyEmailStateCopyWith<$Res> {
  _$VerifyEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? otpError = freezed,
    Object? isOtpDirty = null,
    Object? isOtpLoading = null,
    Object? isResendLoading = null,
    Object? isOtpSuccess = null,
    Object? isResendSuccess = null,
    Object? loginResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      otpError: freezed == otpError
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isOtpDirty: null == isOtpDirty
          ? _value.isOtpDirty
          : isOtpDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpLoading: null == isOtpLoading
          ? _value.isOtpLoading
          : isOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendLoading: null == isResendLoading
          ? _value.isResendLoading
          : isResendLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpSuccess: null == isOtpSuccess
          ? _value.isOtpSuccess
          : isOtpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendSuccess: null == isResendSuccess
          ? _value.isResendSuccess
          : isResendSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyEmailStateImplCopyWith<$Res>
    implements $VerifyEmailStateCopyWith<$Res> {
  factory _$$VerifyEmailStateImplCopyWith(_$VerifyEmailStateImpl value,
          $Res Function(_$VerifyEmailStateImpl) then) =
      __$$VerifyEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String otp,
      ValidationKey? otpError,
      bool isOtpDirty,
      bool isOtpLoading,
      bool isResendLoading,
      bool isOtpSuccess,
      bool isResendSuccess,
      LoginResponseModel? loginResponse,
      ApiErrorModel? error});
}

/// @nodoc
class __$$VerifyEmailStateImplCopyWithImpl<$Res>
    extends _$VerifyEmailStateCopyWithImpl<$Res, _$VerifyEmailStateImpl>
    implements _$$VerifyEmailStateImplCopyWith<$Res> {
  __$$VerifyEmailStateImplCopyWithImpl(_$VerifyEmailStateImpl _value,
      $Res Function(_$VerifyEmailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? otpError = freezed,
    Object? isOtpDirty = null,
    Object? isOtpLoading = null,
    Object? isResendLoading = null,
    Object? isOtpSuccess = null,
    Object? isResendSuccess = null,
    Object? loginResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_$VerifyEmailStateImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      otpError: freezed == otpError
          ? _value.otpError
          : otpError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isOtpDirty: null == isOtpDirty
          ? _value.isOtpDirty
          : isOtpDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpLoading: null == isOtpLoading
          ? _value.isOtpLoading
          : isOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendLoading: null == isResendLoading
          ? _value.isResendLoading
          : isResendLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpSuccess: null == isOtpSuccess
          ? _value.isOtpSuccess
          : isOtpSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendSuccess: null == isResendSuccess
          ? _value.isResendSuccess
          : isResendSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$VerifyEmailStateImpl extends _VerifyEmailState {
  const _$VerifyEmailStateImpl(
      {this.otp = '',
      this.otpError,
      this.isOtpDirty = false,
      this.isOtpLoading = false,
      this.isResendLoading = false,
      this.isOtpSuccess = false,
      this.isResendSuccess = false,
      this.loginResponse,
      this.error})
      : super._();

  @override
  @JsonKey()
  final String otp;
  @override
  final ValidationKey? otpError;
  @override
  @JsonKey()
  final bool isOtpDirty;
  @override
  @JsonKey()
  final bool isOtpLoading;
  @override
  @JsonKey()
  final bool isResendLoading;
  @override
  @JsonKey()
  final bool isOtpSuccess;
  @override
  @JsonKey()
  final bool isResendSuccess;
  @override
  final LoginResponseModel? loginResponse;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'VerifyEmailState(otp: $otp, otpError: $otpError, isOtpDirty: $isOtpDirty, isOtpLoading: $isOtpLoading, isResendLoading: $isResendLoading, isOtpSuccess: $isOtpSuccess, isResendSuccess: $isResendSuccess, loginResponse: $loginResponse, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyEmailStateImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpError, otpError) ||
                other.otpError == otpError) &&
            (identical(other.isOtpDirty, isOtpDirty) ||
                other.isOtpDirty == isOtpDirty) &&
            (identical(other.isOtpLoading, isOtpLoading) ||
                other.isOtpLoading == isOtpLoading) &&
            (identical(other.isResendLoading, isResendLoading) ||
                other.isResendLoading == isResendLoading) &&
            (identical(other.isOtpSuccess, isOtpSuccess) ||
                other.isOtpSuccess == isOtpSuccess) &&
            (identical(other.isResendSuccess, isResendSuccess) ||
                other.isResendSuccess == isResendSuccess) &&
            const DeepCollectionEquality()
                .equals(other.loginResponse, loginResponse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      otp,
      otpError,
      isOtpDirty,
      isOtpLoading,
      isResendLoading,
      isOtpSuccess,
      isResendSuccess,
      const DeepCollectionEquality().hash(loginResponse),
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyEmailStateImplCopyWith<_$VerifyEmailStateImpl> get copyWith =>
      __$$VerifyEmailStateImplCopyWithImpl<_$VerifyEmailStateImpl>(
          this, _$identity);
}

abstract class _VerifyEmailState extends VerifyEmailState {
  const factory _VerifyEmailState(
      {final String otp,
      final ValidationKey? otpError,
      final bool isOtpDirty,
      final bool isOtpLoading,
      final bool isResendLoading,
      final bool isOtpSuccess,
      final bool isResendSuccess,
      final LoginResponseModel? loginResponse,
      final ApiErrorModel? error}) = _$VerifyEmailStateImpl;
  const _VerifyEmailState._() : super._();

  @override
  String get otp;
  @override
  ValidationKey? get otpError;
  @override
  bool get isOtpDirty;
  @override
  bool get isOtpLoading;
  @override
  bool get isResendLoading;
  @override
  bool get isOtpSuccess;
  @override
  bool get isResendSuccess;
  @override
  LoginResponseModel? get loginResponse;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$VerifyEmailStateImplCopyWith<_$VerifyEmailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
