// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeToggled,
    required TResult Function() submitted,
    required TResult Function() googleSignInSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? rememberMeToggled,
    TResult? Function()? submitted,
    TResult? Function()? googleSignInSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeToggled,
    TResult Function()? submitted,
    TResult Function()? googleSignInSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RememberMeToggled value) rememberMeToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_GoogleSignInSubmitted value)
        googleSignInSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RememberMeToggled value)? rememberMeToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RememberMeToggled value)? rememberMeToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

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
    extends _$LoginEventCopyWithImpl<$Res, _$EmailChangedImpl>
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
    return 'LoginEvent.emailChanged(email: $email)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeToggled,
    required TResult Function() submitted,
    required TResult Function() googleSignInSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? rememberMeToggled,
    TResult? Function()? submitted,
    TResult? Function()? googleSignInSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeToggled,
    TResult Function()? submitted,
    TResult Function()? googleSignInSubmitted,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RememberMeToggled value) rememberMeToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_GoogleSignInSubmitted value)
        googleSignInSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RememberMeToggled value)? rememberMeToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RememberMeToggled value)? rememberMeToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements LoginEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$LoginEventCopyWithImpl<$Res, _$PasswordChangedImpl>
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
    return 'LoginEvent.passwordChanged(password: $password)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeToggled,
    required TResult Function() submitted,
    required TResult Function() googleSignInSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? rememberMeToggled,
    TResult? Function()? submitted,
    TResult? Function()? googleSignInSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeToggled,
    TResult Function()? submitted,
    TResult Function()? googleSignInSubmitted,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RememberMeToggled value) rememberMeToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_GoogleSignInSubmitted value)
        googleSignInSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RememberMeToggled value)? rememberMeToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RememberMeToggled value)? rememberMeToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RememberMeToggledImplCopyWith<$Res> {
  factory _$$RememberMeToggledImplCopyWith(_$RememberMeToggledImpl value,
          $Res Function(_$RememberMeToggledImpl) then) =
      __$$RememberMeToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RememberMeToggledImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$RememberMeToggledImpl>
    implements _$$RememberMeToggledImplCopyWith<$Res> {
  __$$RememberMeToggledImplCopyWithImpl(_$RememberMeToggledImpl _value,
      $Res Function(_$RememberMeToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RememberMeToggledImpl implements _RememberMeToggled {
  const _$RememberMeToggledImpl();

  @override
  String toString() {
    return 'LoginEvent.rememberMeToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RememberMeToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeToggled,
    required TResult Function() submitted,
    required TResult Function() googleSignInSubmitted,
  }) {
    return rememberMeToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? rememberMeToggled,
    TResult? Function()? submitted,
    TResult? Function()? googleSignInSubmitted,
  }) {
    return rememberMeToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeToggled,
    TResult Function()? submitted,
    TResult Function()? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (rememberMeToggled != null) {
      return rememberMeToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RememberMeToggled value) rememberMeToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_GoogleSignInSubmitted value)
        googleSignInSubmitted,
  }) {
    return rememberMeToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RememberMeToggled value)? rememberMeToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
  }) {
    return rememberMeToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RememberMeToggled value)? rememberMeToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (rememberMeToggled != null) {
      return rememberMeToggled(this);
    }
    return orElse();
  }
}

abstract class _RememberMeToggled implements LoginEvent {
  const factory _RememberMeToggled() = _$RememberMeToggledImpl;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$SubmittedImpl>
    implements _$$SubmittedImplCopyWith<$Res> {
  __$$SubmittedImplCopyWithImpl(
      _$SubmittedImpl _value, $Res Function(_$SubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmittedImpl implements _Submitted {
  const _$SubmittedImpl();

  @override
  String toString() {
    return 'LoginEvent.submitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeToggled,
    required TResult Function() submitted,
    required TResult Function() googleSignInSubmitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? rememberMeToggled,
    TResult? Function()? submitted,
    TResult? Function()? googleSignInSubmitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeToggled,
    TResult Function()? submitted,
    TResult Function()? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RememberMeToggled value) rememberMeToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_GoogleSignInSubmitted value)
        googleSignInSubmitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RememberMeToggled value)? rememberMeToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RememberMeToggled value)? rememberMeToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements LoginEvent {
  const factory _Submitted() = _$SubmittedImpl;
}

/// @nodoc
abstract class _$$GoogleSignInSubmittedImplCopyWith<$Res> {
  factory _$$GoogleSignInSubmittedImplCopyWith(
          _$GoogleSignInSubmittedImpl value,
          $Res Function(_$GoogleSignInSubmittedImpl) then) =
      __$$GoogleSignInSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleSignInSubmittedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$GoogleSignInSubmittedImpl>
    implements _$$GoogleSignInSubmittedImplCopyWith<$Res> {
  __$$GoogleSignInSubmittedImplCopyWithImpl(_$GoogleSignInSubmittedImpl _value,
      $Res Function(_$GoogleSignInSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoogleSignInSubmittedImpl implements _GoogleSignInSubmitted {
  const _$GoogleSignInSubmittedImpl();

  @override
  String toString() {
    return 'LoginEvent.googleSignInSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() rememberMeToggled,
    required TResult Function() submitted,
    required TResult Function() googleSignInSubmitted,
  }) {
    return googleSignInSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? rememberMeToggled,
    TResult? Function()? submitted,
    TResult? Function()? googleSignInSubmitted,
  }) {
    return googleSignInSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? rememberMeToggled,
    TResult Function()? submitted,
    TResult Function()? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (googleSignInSubmitted != null) {
      return googleSignInSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_RememberMeToggled value) rememberMeToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_GoogleSignInSubmitted value)
        googleSignInSubmitted,
  }) {
    return googleSignInSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_RememberMeToggled value)? rememberMeToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
  }) {
    return googleSignInSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_RememberMeToggled value)? rememberMeToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_GoogleSignInSubmitted value)? googleSignInSubmitted,
    required TResult orElse(),
  }) {
    if (googleSignInSubmitted != null) {
      return googleSignInSubmitted(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignInSubmitted implements LoginEvent {
  const factory _GoogleSignInSubmitted() = _$GoogleSignInSubmittedImpl;
}

/// @nodoc
mixin _$LoginState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get rememberMe => throw _privateConstructorUsedError;
  ValidationKey? get emailError => throw _privateConstructorUsedError;
  ValidationKey? get passwordError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  LoginResponseModel? get loginResponse => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;
  AutovalidateMode get autoValidateMode => throw _privateConstructorUsedError;
  bool get isGoogleLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {String email,
      String password,
      bool rememberMe,
      ValidationKey? emailError,
      ValidationKey? passwordError,
      bool isLoading,
      bool isSuccess,
      LoginResponseModel? loginResponse,
      ApiErrorModel? error,
      AutovalidateMode autoValidateMode,
      bool isGoogleLoading});

  $LoginResponseModelCopyWith<$Res>? get loginResponse;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? loginResponse = freezed,
    Object? error = freezed,
    Object? autoValidateMode = null,
    Object? isGoogleLoading = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      autoValidateMode: null == autoValidateMode
          ? _value.autoValidateMode
          : autoValidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res>? get loginResponse {
    if (_value.loginResponse == null) {
      return null;
    }

    return $LoginResponseModelCopyWith<$Res>(_value.loginResponse!, (value) {
      return _then(_value.copyWith(loginResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool rememberMe,
      ValidationKey? emailError,
      ValidationKey? passwordError,
      bool isLoading,
      bool isSuccess,
      LoginResponseModel? loginResponse,
      ApiErrorModel? error,
      AutovalidateMode autoValidateMode,
      bool isGoogleLoading});

  @override
  $LoginResponseModelCopyWith<$Res>? get loginResponse;
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rememberMe = null,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? isLoading = null,
    Object? isSuccess = null,
    Object? loginResponse = freezed,
    Object? error = freezed,
    Object? autoValidateMode = null,
    Object? isGoogleLoading = null,
  }) {
    return _then(_$LoginStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      rememberMe: null == rememberMe
          ? _value.rememberMe
          : rememberMe // ignore: cast_nullable_to_non_nullable
              as bool,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      loginResponse: freezed == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as LoginResponseModel?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      autoValidateMode: null == autoValidateMode
          ? _value.autoValidateMode
          : autoValidateMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      isGoogleLoading: null == isGoogleLoading
          ? _value.isGoogleLoading
          : isGoogleLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl(
      {this.email = '',
      this.password = '',
      this.rememberMe = false,
      this.emailError,
      this.passwordError,
      this.isLoading = false,
      this.isSuccess = false,
      this.loginResponse,
      this.error,
      this.autoValidateMode = AutovalidateMode.disabled,
      this.isGoogleLoading = false})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool rememberMe;
  @override
  final ValidationKey? emailError;
  @override
  final ValidationKey? passwordError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  final LoginResponseModel? loginResponse;
  @override
  final ApiErrorModel? error;
  @override
  @JsonKey()
  final AutovalidateMode autoValidateMode;
  @override
  @JsonKey()
  final bool isGoogleLoading;

  @override
  String toString() {
    return 'LoginState(email: $email, password: $password, rememberMe: $rememberMe, emailError: $emailError, passwordError: $passwordError, isLoading: $isLoading, isSuccess: $isSuccess, loginResponse: $loginResponse, error: $error, autoValidateMode: $autoValidateMode, isGoogleLoading: $isGoogleLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rememberMe, rememberMe) ||
                other.rememberMe == rememberMe) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.autoValidateMode, autoValidateMode) ||
                other.autoValidateMode == autoValidateMode) &&
            (identical(other.isGoogleLoading, isGoogleLoading) ||
                other.isGoogleLoading == isGoogleLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      password,
      rememberMe,
      emailError,
      passwordError,
      isLoading,
      isSuccess,
      loginResponse,
      error,
      autoValidateMode,
      isGoogleLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {final String email,
      final String password,
      final bool rememberMe,
      final ValidationKey? emailError,
      final ValidationKey? passwordError,
      final bool isLoading,
      final bool isSuccess,
      final LoginResponseModel? loginResponse,
      final ApiErrorModel? error,
      final AutovalidateMode autoValidateMode,
      final bool isGoogleLoading}) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  String get email;
  @override
  String get password;
  @override
  bool get rememberMe;
  @override
  ValidationKey? get emailError;
  @override
  ValidationKey? get passwordError;
  @override
  bool get isLoading;
  @override
  bool get isSuccess;
  @override
  LoginResponseModel? get loginResponse;
  @override
  ApiErrorModel? get error;
  @override
  AutovalidateMode get autoValidateMode;
  @override
  bool get isGoogleLoading;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
