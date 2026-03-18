// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  String get email => throw _privateConstructorUsedError;
  @HiveField(1)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String> get roles => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get hasAddress => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get userCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String email,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) List<String> roles,
      @HiveField(4) bool hasAddress,
      @HiveField(5) String? profilePictureUrl,
      @HiveField(6) String? userCode});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
    Object? hasAddress = null,
    Object? profilePictureUrl = freezed,
    Object? userCode = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasAddress: null == hasAddress
          ? _value.hasAddress
          : hasAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String email,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) List<String> roles,
      @HiveField(4) bool hasAddress,
      @HiveField(5) String? profilePictureUrl,
      @HiveField(6) String? userCode});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? roles = null,
    Object? hasAddress = null,
    Object? profilePictureUrl = freezed,
    Object? userCode = freezed,
  }) {
    return _then(_$UserModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hasAddress: null == hasAddress
          ? _value.hasAddress
          : hasAddress // ignore: cast_nullable_to_non_nullable
              as bool,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      userCode: freezed == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {@HiveField(0) required this.email,
      @HiveField(1) required this.firstName,
      @HiveField(2) required this.lastName,
      @HiveField(3) required final List<String> roles,
      @HiveField(4) required this.hasAddress,
      @HiveField(5) this.profilePictureUrl,
      @HiveField(6) this.userCode})
      : _roles = roles;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  @HiveField(0)
  final String email;
  @override
  @HiveField(1)
  final String firstName;
  @override
  @HiveField(2)
  final String lastName;
  final List<String> _roles;
  @override
  @HiveField(3)
  List<String> get roles {
    if (_roles is EqualUnmodifiableListView) return _roles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  @HiveField(4)
  final bool hasAddress;
  @override
  @HiveField(5)
  final String? profilePictureUrl;
  @override
  @HiveField(6)
  final String? userCode;

  @override
  String toString() {
    return 'UserModel(email: $email, firstName: $firstName, lastName: $lastName, roles: $roles, hasAddress: $hasAddress, profilePictureUrl: $profilePictureUrl, userCode: $userCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            const DeepCollectionEquality().equals(other._roles, _roles) &&
            (identical(other.hasAddress, hasAddress) ||
                other.hasAddress == hasAddress) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      firstName,
      lastName,
      const DeepCollectionEquality().hash(_roles),
      hasAddress,
      profilePictureUrl,
      userCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@HiveField(0) required final String email,
      @HiveField(1) required final String firstName,
      @HiveField(2) required final String lastName,
      @HiveField(3) required final List<String> roles,
      @HiveField(4) required final bool hasAddress,
      @HiveField(5) final String? profilePictureUrl,
      @HiveField(6) final String? userCode}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  @HiveField(0)
  String get email;
  @override
  @HiveField(1)
  String get firstName;
  @override
  @HiveField(2)
  String get lastName;
  @override
  @HiveField(3)
  List<String> get roles;
  @override
  @HiveField(4)
  bool get hasAddress;
  @override
  @HiveField(5)
  String? get profilePictureUrl;
  @override
  @HiveField(6)
  String? get userCode;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
