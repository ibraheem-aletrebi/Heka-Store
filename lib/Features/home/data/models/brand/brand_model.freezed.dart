// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandModel _$BrandModelFromJson(Map<String, dynamic> json) {
  return _BrandModel.fromJson(json);
}

/// @nodoc
mixin _$BrandModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'storeNameAr')
  String get storeNameAr => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'storeName')
  String get storeNameEn => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'logoUrl')
  String? get logoUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'averageRating')
  double? get averageRating => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'totalReviews')
  int? get totalReviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandModelCopyWith<BrandModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandModelCopyWith<$Res> {
  factory $BrandModelCopyWith(
          BrandModel value, $Res Function(BrandModel) then) =
      _$BrandModelCopyWithImpl<$Res, BrandModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) @JsonKey(name: 'storeNameAr') String storeNameAr,
      @HiveField(2) @JsonKey(name: 'storeName') String storeNameEn,
      @HiveField(3) @JsonKey(name: 'logoUrl') String? logoUrl,
      @HiveField(4) @JsonKey(name: 'averageRating') double? averageRating,
      @HiveField(5) @JsonKey(name: 'totalReviews') int? totalReviews});
}

/// @nodoc
class _$BrandModelCopyWithImpl<$Res, $Val extends BrandModel>
    implements $BrandModelCopyWith<$Res> {
  _$BrandModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeNameAr = null,
    Object? storeNameEn = null,
    Object? logoUrl = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeNameAr: null == storeNameAr
          ? _value.storeNameAr
          : storeNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      storeNameEn: null == storeNameEn
          ? _value.storeNameEn
          : storeNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandModelImplCopyWith<$Res>
    implements $BrandModelCopyWith<$Res> {
  factory _$$BrandModelImplCopyWith(
          _$BrandModelImpl value, $Res Function(_$BrandModelImpl) then) =
      __$$BrandModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) @JsonKey(name: 'storeNameAr') String storeNameAr,
      @HiveField(2) @JsonKey(name: 'storeName') String storeNameEn,
      @HiveField(3) @JsonKey(name: 'logoUrl') String? logoUrl,
      @HiveField(4) @JsonKey(name: 'averageRating') double? averageRating,
      @HiveField(5) @JsonKey(name: 'totalReviews') int? totalReviews});
}

/// @nodoc
class __$$BrandModelImplCopyWithImpl<$Res>
    extends _$BrandModelCopyWithImpl<$Res, _$BrandModelImpl>
    implements _$$BrandModelImplCopyWith<$Res> {
  __$$BrandModelImplCopyWithImpl(
      _$BrandModelImpl _value, $Res Function(_$BrandModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeNameAr = null,
    Object? storeNameEn = null,
    Object? logoUrl = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
  }) {
    return _then(_$BrandModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeNameAr: null == storeNameAr
          ? _value.storeNameAr
          : storeNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      storeNameEn: null == storeNameEn
          ? _value.storeNameEn
          : storeNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandModelImpl implements _BrandModel {
  const _$BrandModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @JsonKey(name: 'storeNameAr') required this.storeNameAr,
      @HiveField(2) @JsonKey(name: 'storeName') required this.storeNameEn,
      @HiveField(3) @JsonKey(name: 'logoUrl') this.logoUrl,
      @HiveField(4) @JsonKey(name: 'averageRating') this.averageRating,
      @HiveField(5) @JsonKey(name: 'totalReviews') this.totalReviews});

  factory _$BrandModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'storeNameAr')
  final String storeNameAr;
  @override
  @HiveField(2)
  @JsonKey(name: 'storeName')
  final String storeNameEn;
  @override
  @HiveField(3)
  @JsonKey(name: 'logoUrl')
  final String? logoUrl;
  @override
  @HiveField(4)
  @JsonKey(name: 'averageRating')
  final double? averageRating;
  @override
  @HiveField(5)
  @JsonKey(name: 'totalReviews')
  final int? totalReviews;

  @override
  String toString() {
    return 'BrandModel(id: $id, storeNameAr: $storeNameAr, storeNameEn: $storeNameEn, logoUrl: $logoUrl, averageRating: $averageRating, totalReviews: $totalReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeNameAr, storeNameAr) ||
                other.storeNameAr == storeNameAr) &&
            (identical(other.storeNameEn, storeNameEn) ||
                other.storeNameEn == storeNameEn) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, storeNameAr, storeNameEn,
      logoUrl, averageRating, totalReviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandModelImplCopyWith<_$BrandModelImpl> get copyWith =>
      __$$BrandModelImplCopyWithImpl<_$BrandModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandModelImplToJson(
      this,
    );
  }
}

abstract class _BrandModel implements BrandModel {
  const factory _BrandModel(
      {@HiveField(0) required final int id,
      @HiveField(1)
      @JsonKey(name: 'storeNameAr')
      required final String storeNameAr,
      @HiveField(2)
      @JsonKey(name: 'storeName')
      required final String storeNameEn,
      @HiveField(3) @JsonKey(name: 'logoUrl') final String? logoUrl,
      @HiveField(4) @JsonKey(name: 'averageRating') final double? averageRating,
      @HiveField(5)
      @JsonKey(name: 'totalReviews')
      final int? totalReviews}) = _$BrandModelImpl;

  factory _BrandModel.fromJson(Map<String, dynamic> json) =
      _$BrandModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'storeNameAr')
  String get storeNameAr;
  @override
  @HiveField(2)
  @JsonKey(name: 'storeName')
  String get storeNameEn;
  @override
  @HiveField(3)
  @JsonKey(name: 'logoUrl')
  String? get logoUrl;
  @override
  @HiveField(4)
  @JsonKey(name: 'averageRating')
  double? get averageRating;
  @override
  @HiveField(5)
  @JsonKey(name: 'totalReviews')
  int? get totalReviews;
  @override
  @JsonKey(ignore: true)
  _$$BrandModelImplCopyWith<_$BrandModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
