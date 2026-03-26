// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddressRequestModel _$AddressRequestModelFromJson(Map<String, dynamic> json) {
  return _AddressRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AddressRequestModel {
  String get nickname => throw _privateConstructorUsedError;
  String get fullAddress => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressRequestModelCopyWith<AddressRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressRequestModelCopyWith<$Res> {
  factory $AddressRequestModelCopyWith(
          AddressRequestModel value, $Res Function(AddressRequestModel) then) =
      _$AddressRequestModelCopyWithImpl<$Res, AddressRequestModel>;
  @useResult
  $Res call(
      {String nickname,
      String fullAddress,
      double latitude,
      double longitude,
      bool isDefault,
      String? phoneNumber});
}

/// @nodoc
class _$AddressRequestModelCopyWithImpl<$Res, $Val extends AddressRequestModel>
    implements $AddressRequestModelCopyWith<$Res> {
  _$AddressRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? fullAddress = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? isDefault = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressRequestModelImplCopyWith<$Res>
    implements $AddressRequestModelCopyWith<$Res> {
  factory _$$AddressRequestModelImplCopyWith(_$AddressRequestModelImpl value,
          $Res Function(_$AddressRequestModelImpl) then) =
      __$$AddressRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      String fullAddress,
      double latitude,
      double longitude,
      bool isDefault,
      String? phoneNumber});
}

/// @nodoc
class __$$AddressRequestModelImplCopyWithImpl<$Res>
    extends _$AddressRequestModelCopyWithImpl<$Res, _$AddressRequestModelImpl>
    implements _$$AddressRequestModelImplCopyWith<$Res> {
  __$$AddressRequestModelImplCopyWithImpl(_$AddressRequestModelImpl _value,
      $Res Function(_$AddressRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? fullAddress = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? isDefault = null,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$AddressRequestModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      fullAddress: null == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressRequestModelImpl implements _AddressRequestModel {
  const _$AddressRequestModelImpl(
      {required this.nickname,
      required this.fullAddress,
      required this.latitude,
      required this.longitude,
      required this.isDefault,
      this.phoneNumber});

  factory _$AddressRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressRequestModelImplFromJson(json);

  @override
  final String nickname;
  @override
  final String fullAddress;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final bool isDefault;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'AddressRequestModel(nickname: $nickname, fullAddress: $fullAddress, latitude: $latitude, longitude: $longitude, isDefault: $isDefault, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressRequestModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, fullAddress, latitude,
      longitude, isDefault, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressRequestModelImplCopyWith<_$AddressRequestModelImpl> get copyWith =>
      __$$AddressRequestModelImplCopyWithImpl<_$AddressRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AddressRequestModel implements AddressRequestModel {
  const factory _AddressRequestModel(
      {required final String nickname,
      required final String fullAddress,
      required final double latitude,
      required final double longitude,
      required final bool isDefault,
      final String? phoneNumber}) = _$AddressRequestModelImpl;

  factory _AddressRequestModel.fromJson(Map<String, dynamic> json) =
      _$AddressRequestModelImpl.fromJson;

  @override
  String get nickname;
  @override
  String get fullAddress;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  bool get isDefault;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$AddressRequestModelImplCopyWith<_$AddressRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
