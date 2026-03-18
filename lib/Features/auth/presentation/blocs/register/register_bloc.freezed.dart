// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FirstNameChangedImplCopyWith<$Res> {
  factory _$$FirstNameChangedImplCopyWith(_$FirstNameChangedImpl value,
          $Res Function(_$FirstNameChangedImpl) then) =
      __$$FirstNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$FirstNameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$FirstNameChangedImpl>
    implements _$$FirstNameChangedImplCopyWith<$Res> {
  __$$FirstNameChangedImplCopyWithImpl(_$FirstNameChangedImpl _value,
      $Res Function(_$FirstNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$FirstNameChangedImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChangedImpl implements _FirstNameChanged {
  const _$FirstNameChangedImpl(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstNameChangedImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      __$$FirstNameChangedImplCopyWithImpl<_$FirstNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements RegisterEvent {
  const factory _FirstNameChanged(final String firstName) =
      _$FirstNameChangedImpl;

  String get firstName;
  @JsonKey(ignore: true)
  _$$FirstNameChangedImplCopyWith<_$FirstNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastNameChangedImplCopyWith<$Res> {
  factory _$$LastNameChangedImplCopyWith(_$LastNameChangedImpl value,
          $Res Function(_$LastNameChangedImpl) then) =
      __$$LastNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lastName});
}

/// @nodoc
class __$$LastNameChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$LastNameChangedImpl>
    implements _$$LastNameChangedImplCopyWith<$Res> {
  __$$LastNameChangedImplCopyWithImpl(
      _$LastNameChangedImpl _value, $Res Function(_$LastNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastName = null,
  }) {
    return _then(_$LastNameChangedImpl(
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChangedImpl implements _LastNameChanged {
  const _$LastNameChangedImpl(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastNameChangedImpl &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      __$$LastNameChangedImplCopyWithImpl<_$LastNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements RegisterEvent {
  const factory _LastNameChanged(final String lastName) = _$LastNameChangedImpl;

  String get lastName;
  @JsonKey(ignore: true)
  _$$LastNameChangedImplCopyWith<_$LastNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$RegisterEventCopyWithImpl<$Res, _$EmailChangedImpl>
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
    return 'RegisterEvent.emailChanged(email: $email)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
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
    extends _$RegisterEventCopyWithImpl<$Res, _$PasswordChangedImpl>
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
    return 'RegisterEvent.passwordChanged(password: $password)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterEvent {
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
    extends _$RegisterEventCopyWithImpl<$Res, _$ConfirmPasswordChangedImpl>
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
    return 'RegisterEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return confirmPasswordChanged?.call(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements RegisterEvent {
  const factory _ConfirmPasswordChanged(final String confirmPassword) =
      _$ConfirmPasswordChangedImpl;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedImplCopyWith<_$ConfirmPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneChangedImplCopyWith<$Res> {
  factory _$$PhoneChangedImplCopyWith(
          _$PhoneChangedImpl value, $Res Function(_$PhoneChangedImpl) then) =
      __$$PhoneChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$PhoneChangedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$PhoneChangedImpl>
    implements _$$PhoneChangedImplCopyWith<$Res> {
  __$$PhoneChangedImplCopyWithImpl(
      _$PhoneChangedImpl _value, $Res Function(_$PhoneChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$PhoneChangedImpl(
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChangedImpl implements _PhoneChanged {
  const _$PhoneChangedImpl(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'RegisterEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneChangedImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      __$$PhoneChangedImplCopyWithImpl<_$PhoneChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return phoneChanged?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneChanged implements RegisterEvent {
  const factory _PhoneChanged(final String phone) = _$PhoneChangedImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$PhoneChangedImplCopyWith<_$PhoneChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AcceptTermsToggledImplCopyWith<$Res> {
  factory _$$AcceptTermsToggledImplCopyWith(_$AcceptTermsToggledImpl value,
          $Res Function(_$AcceptTermsToggledImpl) then) =
      __$$AcceptTermsToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptTermsToggledImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$AcceptTermsToggledImpl>
    implements _$$AcceptTermsToggledImplCopyWith<$Res> {
  __$$AcceptTermsToggledImplCopyWithImpl(_$AcceptTermsToggledImpl _value,
      $Res Function(_$AcceptTermsToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptTermsToggledImpl implements _AcceptTermsToggled {
  const _$AcceptTermsToggledImpl();

  @override
  String toString() {
    return 'RegisterEvent.acceptTermsToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptTermsToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return acceptTermsToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return acceptTermsToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function()? flowReset,
    required TResult orElse(),
  }) {
    if (acceptTermsToggled != null) {
      return acceptTermsToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return acceptTermsToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return acceptTermsToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (acceptTermsToggled != null) {
      return acceptTermsToggled(this);
    }
    return orElse();
  }
}

abstract class _AcceptTermsToggled implements RegisterEvent {
  const factory _AcceptTermsToggled() = _$AcceptTermsToggledImpl;
}

/// @nodoc
abstract class _$$SubmittedImplCopyWith<$Res> {
  factory _$$SubmittedImplCopyWith(
          _$SubmittedImpl value, $Res Function(_$SubmittedImpl) then) =
      __$$SubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SubmittedImpl>
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
    return 'RegisterEvent.submitted()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
    TResult Function()? flowReset,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements RegisterEvent {
  const factory _Submitted() = _$SubmittedImpl;
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
    extends _$RegisterEventCopyWithImpl<$Res, _$OtpChangedImpl>
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
    return 'RegisterEvent.otpChanged(otp: $otp)';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements RegisterEvent {
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
    extends _$RegisterEventCopyWithImpl<$Res, _$OtpSubmittedImpl>
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
    return 'RegisterEvent.otpSubmitted()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return otpSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return otpSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return otpSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return otpSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (otpSubmitted != null) {
      return otpSubmitted(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmitted implements RegisterEvent {
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
    extends _$RegisterEventCopyWithImpl<$Res, _$OtpResentImpl>
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
    return 'RegisterEvent.otpResent()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return otpResent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return otpResent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return otpResent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return otpResent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (otpResent != null) {
      return otpResent(this);
    }
    return orElse();
  }
}

abstract class _OtpResent implements RegisterEvent {
  const factory _OtpResent() = _$OtpResentImpl;
}

/// @nodoc
abstract class _$$FlowResetImplCopyWith<$Res> {
  factory _$$FlowResetImplCopyWith(
          _$FlowResetImpl value, $Res Function(_$FlowResetImpl) then) =
      __$$FlowResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlowResetImplCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$FlowResetImpl>
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
    return 'RegisterEvent.flowReset()';
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
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function() acceptTermsToggled,
    required TResult Function() submitted,
    required TResult Function(String otp) otpChanged,
    required TResult Function() otpSubmitted,
    required TResult Function() otpResent,
    required TResult Function() flowReset,
  }) {
    return flowReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? firstNameChanged,
    TResult? Function(String lastName)? lastNameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String confirmPassword)? confirmPasswordChanged,
    TResult? Function(String phone)? phoneChanged,
    TResult? Function()? acceptTermsToggled,
    TResult? Function()? submitted,
    TResult? Function(String otp)? otpChanged,
    TResult? Function()? otpSubmitted,
    TResult? Function()? otpResent,
    TResult? Function()? flowReset,
  }) {
    return flowReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function()? acceptTermsToggled,
    TResult Function()? submitted,
    TResult Function(String otp)? otpChanged,
    TResult Function()? otpSubmitted,
    TResult Function()? otpResent,
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
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_PhoneChanged value) phoneChanged,
    required TResult Function(_AcceptTermsToggled value) acceptTermsToggled,
    required TResult Function(_Submitted value) submitted,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) otpSubmitted,
    required TResult Function(_OtpResent value) otpResent,
    required TResult Function(_FlowReset value) flowReset,
  }) {
    return flowReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FirstNameChanged value)? firstNameChanged,
    TResult? Function(_LastNameChanged value)? lastNameChanged,
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_PhoneChanged value)? phoneChanged,
    TResult? Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult? Function(_Submitted value)? submitted,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? otpSubmitted,
    TResult? Function(_OtpResent value)? otpResent,
    TResult? Function(_FlowReset value)? flowReset,
  }) {
    return flowReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_PhoneChanged value)? phoneChanged,
    TResult Function(_AcceptTermsToggled value)? acceptTermsToggled,
    TResult Function(_Submitted value)? submitted,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? otpSubmitted,
    TResult Function(_OtpResent value)? otpResent,
    TResult Function(_FlowReset value)? flowReset,
    required TResult orElse(),
  }) {
    if (flowReset != null) {
      return flowReset(this);
    }
    return orElse();
  }
}

abstract class _FlowReset implements RegisterEvent {
  const factory _FlowReset() = _$FlowResetImpl;
}

/// @nodoc
mixin _$RegisterState {
  RegisterStep get step => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  bool get acceptTerms => throw _privateConstructorUsedError;
  ValidationKey? get firstNameError => throw _privateConstructorUsedError;
  ValidationKey? get lastNameError => throw _privateConstructorUsedError;
  ValidationKey? get emailError => throw _privateConstructorUsedError;
  ValidationKey? get passwordError => throw _privateConstructorUsedError;
  ValidationKey? get confirmPasswordError => throw _privateConstructorUsedError;
  ValidationKey? get phoneError => throw _privateConstructorUsedError;
  bool get isFirstNameDirty => throw _privateConstructorUsedError;
  bool get isLastNameDirty => throw _privateConstructorUsedError;
  bool get isEmailDirty => throw _privateConstructorUsedError;
  bool get isPasswordDirty => throw _privateConstructorUsedError;
  bool get isConfirmPasswordDirty => throw _privateConstructorUsedError;
  bool get isPhoneDirty => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  ValidationKey? get otpError => throw _privateConstructorUsedError;
  bool get isOtpDirty => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isOtpLoading => throw _privateConstructorUsedError;
  bool get isResendLoading => throw _privateConstructorUsedError;
  bool get isRegisterSuccess => throw _privateConstructorUsedError;
  bool get isOtpSuccess => throw _privateConstructorUsedError;
  bool get isResendSuccess => throw _privateConstructorUsedError;
  LoginResponseModel? get loginResponse => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {RegisterStep step,
      String firstName,
      String lastName,
      String email,
      String password,
      String confirmPassword,
      String phone,
      bool acceptTerms,
      ValidationKey? firstNameError,
      ValidationKey? lastNameError,
      ValidationKey? emailError,
      ValidationKey? passwordError,
      ValidationKey? confirmPasswordError,
      ValidationKey? phoneError,
      bool isFirstNameDirty,
      bool isLastNameDirty,
      bool isEmailDirty,
      bool isPasswordDirty,
      bool isConfirmPasswordDirty,
      bool isPhoneDirty,
      String otp,
      ValidationKey? otpError,
      bool isOtpDirty,
      bool isLoading,
      bool isOtpLoading,
      bool isResendLoading,
      bool isRegisterSuccess,
      bool isOtpSuccess,
      bool isResendSuccess,
      LoginResponseModel? loginResponse,
      ApiErrorModel? error});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? phone = null,
    Object? acceptTerms = null,
    Object? firstNameError = freezed,
    Object? lastNameError = freezed,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? phoneError = freezed,
    Object? isFirstNameDirty = null,
    Object? isLastNameDirty = null,
    Object? isEmailDirty = null,
    Object? isPasswordDirty = null,
    Object? isConfirmPasswordDirty = null,
    Object? isPhoneDirty = null,
    Object? otp = null,
    Object? otpError = freezed,
    Object? isOtpDirty = null,
    Object? isLoading = null,
    Object? isOtpLoading = null,
    Object? isResendLoading = null,
    Object? isRegisterSuccess = null,
    Object? isOtpSuccess = null,
    Object? isResendSuccess = null,
    Object? loginResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as RegisterStep,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNameError: freezed == firstNameError
          ? _value.firstNameError
          : firstNameError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      lastNameError: freezed == lastNameError
          ? _value.lastNameError
          : lastNameError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _value.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      phoneError: freezed == phoneError
          ? _value.phoneError
          : phoneError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isFirstNameDirty: null == isFirstNameDirty
          ? _value.isFirstNameDirty
          : isFirstNameDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastNameDirty: null == isLastNameDirty
          ? _value.isLastNameDirty
          : isLastNameDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailDirty: null == isEmailDirty
          ? _value.isEmailDirty
          : isEmailDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordDirty: null == isPasswordDirty
          ? _value.isPasswordDirty
          : isPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordDirty: null == isConfirmPasswordDirty
          ? _value.isConfirmPasswordDirty
          : isConfirmPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneDirty: null == isPhoneDirty
          ? _value.isPhoneDirty
          : isPhoneDirty // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpLoading: null == isOtpLoading
          ? _value.isOtpLoading
          : isOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendLoading: null == isResendLoading
          ? _value.isResendLoading
          : isResendLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStep step,
      String firstName,
      String lastName,
      String email,
      String password,
      String confirmPassword,
      String phone,
      bool acceptTerms,
      ValidationKey? firstNameError,
      ValidationKey? lastNameError,
      ValidationKey? emailError,
      ValidationKey? passwordError,
      ValidationKey? confirmPasswordError,
      ValidationKey? phoneError,
      bool isFirstNameDirty,
      bool isLastNameDirty,
      bool isEmailDirty,
      bool isPasswordDirty,
      bool isConfirmPasswordDirty,
      bool isPhoneDirty,
      String otp,
      ValidationKey? otpError,
      bool isOtpDirty,
      bool isLoading,
      bool isOtpLoading,
      bool isResendLoading,
      bool isRegisterSuccess,
      bool isOtpSuccess,
      bool isResendSuccess,
      LoginResponseModel? loginResponse,
      ApiErrorModel? error});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? phone = null,
    Object? acceptTerms = null,
    Object? firstNameError = freezed,
    Object? lastNameError = freezed,
    Object? emailError = freezed,
    Object? passwordError = freezed,
    Object? confirmPasswordError = freezed,
    Object? phoneError = freezed,
    Object? isFirstNameDirty = null,
    Object? isLastNameDirty = null,
    Object? isEmailDirty = null,
    Object? isPasswordDirty = null,
    Object? isConfirmPasswordDirty = null,
    Object? isPhoneDirty = null,
    Object? otp = null,
    Object? otpError = freezed,
    Object? isOtpDirty = null,
    Object? isLoading = null,
    Object? isOtpLoading = null,
    Object? isResendLoading = null,
    Object? isRegisterSuccess = null,
    Object? isOtpSuccess = null,
    Object? isResendSuccess = null,
    Object? loginResponse = freezed,
    Object? error = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as RegisterStep,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      acceptTerms: null == acceptTerms
          ? _value.acceptTerms
          : acceptTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNameError: freezed == firstNameError
          ? _value.firstNameError
          : firstNameError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      lastNameError: freezed == lastNameError
          ? _value.lastNameError
          : lastNameError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      emailError: freezed == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      passwordError: freezed == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      confirmPasswordError: freezed == confirmPasswordError
          ? _value.confirmPasswordError
          : confirmPasswordError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      phoneError: freezed == phoneError
          ? _value.phoneError
          : phoneError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      isFirstNameDirty: null == isFirstNameDirty
          ? _value.isFirstNameDirty
          : isFirstNameDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isLastNameDirty: null == isLastNameDirty
          ? _value.isLastNameDirty
          : isLastNameDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailDirty: null == isEmailDirty
          ? _value.isEmailDirty
          : isEmailDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordDirty: null == isPasswordDirty
          ? _value.isPasswordDirty
          : isPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordDirty: null == isConfirmPasswordDirty
          ? _value.isConfirmPasswordDirty
          : isConfirmPasswordDirty // ignore: cast_nullable_to_non_nullable
              as bool,
      isPhoneDirty: null == isPhoneDirty
          ? _value.isPhoneDirty
          : isPhoneDirty // ignore: cast_nullable_to_non_nullable
              as bool,
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
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isOtpLoading: null == isOtpLoading
          ? _value.isOtpLoading
          : isOtpLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendLoading: null == isResendLoading
          ? _value.isResendLoading
          : isResendLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegisterSuccess: null == isRegisterSuccess
          ? _value.isRegisterSuccess
          : isRegisterSuccess // ignore: cast_nullable_to_non_nullable
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

class _$RegisterStateImpl extends _RegisterState {
  const _$RegisterStateImpl(
      {this.step = RegisterStep.form,
      this.firstName = '',
      this.lastName = '',
      this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.phone = '',
      this.acceptTerms = false,
      this.firstNameError,
      this.lastNameError,
      this.emailError,
      this.passwordError,
      this.confirmPasswordError,
      this.phoneError,
      this.isFirstNameDirty = false,
      this.isLastNameDirty = false,
      this.isEmailDirty = false,
      this.isPasswordDirty = false,
      this.isConfirmPasswordDirty = false,
      this.isPhoneDirty = false,
      this.otp = '',
      this.otpError,
      this.isOtpDirty = false,
      this.isLoading = false,
      this.isOtpLoading = false,
      this.isResendLoading = false,
      this.isRegisterSuccess = false,
      this.isOtpSuccess = false,
      this.isResendSuccess = false,
      this.loginResponse,
      this.error})
      : super._();

  @override
  @JsonKey()
  final RegisterStep step;
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;
  @override
  @JsonKey()
  final String phone;
  @override
  @JsonKey()
  final bool acceptTerms;
  @override
  final ValidationKey? firstNameError;
  @override
  final ValidationKey? lastNameError;
  @override
  final ValidationKey? emailError;
  @override
  final ValidationKey? passwordError;
  @override
  final ValidationKey? confirmPasswordError;
  @override
  final ValidationKey? phoneError;
  @override
  @JsonKey()
  final bool isFirstNameDirty;
  @override
  @JsonKey()
  final bool isLastNameDirty;
  @override
  @JsonKey()
  final bool isEmailDirty;
  @override
  @JsonKey()
  final bool isPasswordDirty;
  @override
  @JsonKey()
  final bool isConfirmPasswordDirty;
  @override
  @JsonKey()
  final bool isPhoneDirty;
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
  final bool isLoading;
  @override
  @JsonKey()
  final bool isOtpLoading;
  @override
  @JsonKey()
  final bool isResendLoading;
  @override
  @JsonKey()
  final bool isRegisterSuccess;
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
    return 'RegisterState(step: $step, firstName: $firstName, lastName: $lastName, email: $email, password: $password, confirmPassword: $confirmPassword, phone: $phone, acceptTerms: $acceptTerms, firstNameError: $firstNameError, lastNameError: $lastNameError, emailError: $emailError, passwordError: $passwordError, confirmPasswordError: $confirmPasswordError, phoneError: $phoneError, isFirstNameDirty: $isFirstNameDirty, isLastNameDirty: $isLastNameDirty, isEmailDirty: $isEmailDirty, isPasswordDirty: $isPasswordDirty, isConfirmPasswordDirty: $isConfirmPasswordDirty, isPhoneDirty: $isPhoneDirty, otp: $otp, otpError: $otpError, isOtpDirty: $isOtpDirty, isLoading: $isLoading, isOtpLoading: $isOtpLoading, isResendLoading: $isResendLoading, isRegisterSuccess: $isRegisterSuccess, isOtpSuccess: $isOtpSuccess, isResendSuccess: $isResendSuccess, loginResponse: $loginResponse, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.acceptTerms, acceptTerms) ||
                other.acceptTerms == acceptTerms) &&
            (identical(other.firstNameError, firstNameError) ||
                other.firstNameError == firstNameError) &&
            (identical(other.lastNameError, lastNameError) ||
                other.lastNameError == lastNameError) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.confirmPasswordError, confirmPasswordError) ||
                other.confirmPasswordError == confirmPasswordError) &&
            (identical(other.phoneError, phoneError) ||
                other.phoneError == phoneError) &&
            (identical(other.isFirstNameDirty, isFirstNameDirty) ||
                other.isFirstNameDirty == isFirstNameDirty) &&
            (identical(other.isLastNameDirty, isLastNameDirty) ||
                other.isLastNameDirty == isLastNameDirty) &&
            (identical(other.isEmailDirty, isEmailDirty) ||
                other.isEmailDirty == isEmailDirty) &&
            (identical(other.isPasswordDirty, isPasswordDirty) ||
                other.isPasswordDirty == isPasswordDirty) &&
            (identical(other.isConfirmPasswordDirty, isConfirmPasswordDirty) ||
                other.isConfirmPasswordDirty == isConfirmPasswordDirty) &&
            (identical(other.isPhoneDirty, isPhoneDirty) ||
                other.isPhoneDirty == isPhoneDirty) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpError, otpError) ||
                other.otpError == otpError) &&
            (identical(other.isOtpDirty, isOtpDirty) ||
                other.isOtpDirty == isOtpDirty) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isOtpLoading, isOtpLoading) ||
                other.isOtpLoading == isOtpLoading) &&
            (identical(other.isResendLoading, isResendLoading) ||
                other.isResendLoading == isResendLoading) &&
            (identical(other.isRegisterSuccess, isRegisterSuccess) ||
                other.isRegisterSuccess == isRegisterSuccess) &&
            (identical(other.isOtpSuccess, isOtpSuccess) ||
                other.isOtpSuccess == isOtpSuccess) &&
            (identical(other.isResendSuccess, isResendSuccess) ||
                other.isResendSuccess == isResendSuccess) &&
            const DeepCollectionEquality()
                .equals(other.loginResponse, loginResponse) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        step,
        firstName,
        lastName,
        email,
        password,
        confirmPassword,
        phone,
        acceptTerms,
        firstNameError,
        lastNameError,
        emailError,
        passwordError,
        confirmPasswordError,
        phoneError,
        isFirstNameDirty,
        isLastNameDirty,
        isEmailDirty,
        isPasswordDirty,
        isConfirmPasswordDirty,
        isPhoneDirty,
        otp,
        otpError,
        isOtpDirty,
        isLoading,
        isOtpLoading,
        isResendLoading,
        isRegisterSuccess,
        isOtpSuccess,
        isResendSuccess,
        const DeepCollectionEquality().hash(loginResponse),
        error
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const factory _RegisterState(
      {final RegisterStep step,
      final String firstName,
      final String lastName,
      final String email,
      final String password,
      final String confirmPassword,
      final String phone,
      final bool acceptTerms,
      final ValidationKey? firstNameError,
      final ValidationKey? lastNameError,
      final ValidationKey? emailError,
      final ValidationKey? passwordError,
      final ValidationKey? confirmPasswordError,
      final ValidationKey? phoneError,
      final bool isFirstNameDirty,
      final bool isLastNameDirty,
      final bool isEmailDirty,
      final bool isPasswordDirty,
      final bool isConfirmPasswordDirty,
      final bool isPhoneDirty,
      final String otp,
      final ValidationKey? otpError,
      final bool isOtpDirty,
      final bool isLoading,
      final bool isOtpLoading,
      final bool isResendLoading,
      final bool isRegisterSuccess,
      final bool isOtpSuccess,
      final bool isResendSuccess,
      final LoginResponseModel? loginResponse,
      final ApiErrorModel? error}) = _$RegisterStateImpl;
  const _RegisterState._() : super._();

  @override
  RegisterStep get step;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  String get phone;
  @override
  bool get acceptTerms;
  @override
  ValidationKey? get firstNameError;
  @override
  ValidationKey? get lastNameError;
  @override
  ValidationKey? get emailError;
  @override
  ValidationKey? get passwordError;
  @override
  ValidationKey? get confirmPasswordError;
  @override
  ValidationKey? get phoneError;
  @override
  bool get isFirstNameDirty;
  @override
  bool get isLastNameDirty;
  @override
  bool get isEmailDirty;
  @override
  bool get isPasswordDirty;
  @override
  bool get isConfirmPasswordDirty;
  @override
  bool get isPhoneDirty;
  @override
  String get otp;
  @override
  ValidationKey? get otpError;
  @override
  bool get isOtpDirty;
  @override
  bool get isLoading;
  @override
  bool get isOtpLoading;
  @override
  bool get isResendLoading;
  @override
  bool get isRegisterSuccess;
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
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
