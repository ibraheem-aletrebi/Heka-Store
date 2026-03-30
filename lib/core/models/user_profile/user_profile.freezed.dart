// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  @HiveField(0)
  String get userCode => throw _privateConstructorUsedError;
  @HiveField(1)
  String get firstName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get lastName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get email => throw _privateConstructorUsedError;
  @HiveField(4)
  String get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get profilePictureUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get profilePictureRelativePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {@HiveField(0) String userCode,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) String email,
      @HiveField(4) String phoneNumber,
      @HiveField(5) String? profilePictureUrl,
      @HiveField(6) String? profilePictureRelativePath});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? profilePictureUrl = freezed,
    Object? profilePictureRelativePath = freezed,
  }) {
    return _then(_value.copyWith(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureRelativePath: freezed == profilePictureRelativePath
          ? _value.profilePictureRelativePath
          : profilePictureRelativePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String userCode,
      @HiveField(1) String firstName,
      @HiveField(2) String lastName,
      @HiveField(3) String email,
      @HiveField(4) String phoneNumber,
      @HiveField(5) String? profilePictureUrl,
      @HiveField(6) String? profilePictureRelativePath});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCode = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phoneNumber = null,
    Object? profilePictureUrl = freezed,
    Object? profilePictureRelativePath = freezed,
  }) {
    return _then(_$UserProfileImpl(
      userCode: null == userCode
          ? _value.userCode
          : userCode // ignore: cast_nullable_to_non_nullable
              as String,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      profilePictureUrl: freezed == profilePictureUrl
          ? _value.profilePictureUrl
          : profilePictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePictureRelativePath: freezed == profilePictureRelativePath
          ? _value.profilePictureRelativePath
          : profilePictureRelativePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl extends _UserProfile {
  const _$UserProfileImpl(
      {@HiveField(0) required this.userCode,
      @HiveField(1) required this.firstName,
      @HiveField(2) required this.lastName,
      @HiveField(3) required this.email,
      @HiveField(4) required this.phoneNumber,
      @HiveField(5) this.profilePictureUrl,
      @HiveField(6) this.profilePictureRelativePath})
      : super._();

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  @HiveField(0)
  final String userCode;
  @override
  @HiveField(1)
  final String firstName;
  @override
  @HiveField(2)
  final String lastName;
  @override
  @HiveField(3)
  final String email;
  @override
  @HiveField(4)
  final String phoneNumber;
  @override
  @HiveField(5)
  final String? profilePictureUrl;
  @override
  @HiveField(6)
  final String? profilePictureRelativePath;

  @override
  String toString() {
    return 'UserProfile(userCode: $userCode, firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, profilePictureUrl: $profilePictureUrl, profilePictureRelativePath: $profilePictureRelativePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userCode, userCode) ||
                other.userCode == userCode) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePictureUrl, profilePictureUrl) ||
                other.profilePictureUrl == profilePictureUrl) &&
            (identical(other.profilePictureRelativePath,
                    profilePictureRelativePath) ||
                other.profilePictureRelativePath ==
                    profilePictureRelativePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userCode, firstName, lastName,
      email, phoneNumber, profilePictureUrl, profilePictureRelativePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile extends UserProfile {
  const factory _UserProfile(
          {@HiveField(0) required final String userCode,
          @HiveField(1) required final String firstName,
          @HiveField(2) required final String lastName,
          @HiveField(3) required final String email,
          @HiveField(4) required final String phoneNumber,
          @HiveField(5) final String? profilePictureUrl,
          @HiveField(6) final String? profilePictureRelativePath}) =
      _$UserProfileImpl;
  const _UserProfile._() : super._();

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  @HiveField(0)
  String get userCode;
  @override
  @HiveField(1)
  String get firstName;
  @override
  @HiveField(2)
  String get lastName;
  @override
  @HiveField(3)
  String get email;
  @override
  @HiveField(4)
  String get phoneNumber;
  @override
  @HiveField(5)
  String? get profilePictureUrl;
  @override
  @HiveField(6)
  String? get profilePictureRelativePath;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
