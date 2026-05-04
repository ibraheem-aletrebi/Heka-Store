// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandProfileModel _$BrandProfileModelFromJson(Map<String, dynamic> json) {
  return _BrandProfileModel.fromJson(json);
}

/// @nodoc
mixin _$BrandProfileModel {
  @HiveField(0)
  int get id =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @HiveField(1)
  @JsonKey(name: 'storeName')
  String get storeNameEn =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @HiveField(2)
  @JsonKey(name: 'storeNameAr')
  String get storeNameAr => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get logoUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get bannerImageUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  double? get averageRating => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get totalReviews => throw _privateConstructorUsedError;
  @HiveField(8)
  DateTime? get joinedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandProfileModelCopyWith<BrandProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProfileModelCopyWith<$Res> {
  factory $BrandProfileModelCopyWith(
          BrandProfileModel value, $Res Function(BrandProfileModel) then) =
      _$BrandProfileModelCopyWithImpl<$Res, BrandProfileModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) @JsonKey(name: 'storeName') String storeNameEn,
      @HiveField(2) @JsonKey(name: 'storeNameAr') String storeNameAr,
      @HiveField(3) String? description,
      @HiveField(4) String? logoUrl,
      @HiveField(5) String? bannerImageUrl,
      @HiveField(6) double? averageRating,
      @HiveField(7) int? totalReviews,
      @HiveField(8) DateTime? joinedDate});
}

/// @nodoc
class _$BrandProfileModelCopyWithImpl<$Res, $Val extends BrandProfileModel>
    implements $BrandProfileModelCopyWith<$Res> {
  _$BrandProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeNameEn = null,
    Object? storeNameAr = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? bannerImageUrl = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? joinedDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeNameEn: null == storeNameEn
          ? _value.storeNameEn
          : storeNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      storeNameAr: null == storeNameAr
          ? _value.storeNameAr
          : storeNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImageUrl: freezed == bannerImageUrl
          ? _value.bannerImageUrl
          : bannerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      joinedDate: freezed == joinedDate
          ? _value.joinedDate
          : joinedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandProfileModelImplCopyWith<$Res>
    implements $BrandProfileModelCopyWith<$Res> {
  factory _$$BrandProfileModelImplCopyWith(_$BrandProfileModelImpl value,
          $Res Function(_$BrandProfileModelImpl) then) =
      __$$BrandProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) @JsonKey(name: 'storeName') String storeNameEn,
      @HiveField(2) @JsonKey(name: 'storeNameAr') String storeNameAr,
      @HiveField(3) String? description,
      @HiveField(4) String? logoUrl,
      @HiveField(5) String? bannerImageUrl,
      @HiveField(6) double? averageRating,
      @HiveField(7) int? totalReviews,
      @HiveField(8) DateTime? joinedDate});
}

/// @nodoc
class __$$BrandProfileModelImplCopyWithImpl<$Res>
    extends _$BrandProfileModelCopyWithImpl<$Res, _$BrandProfileModelImpl>
    implements _$$BrandProfileModelImplCopyWith<$Res> {
  __$$BrandProfileModelImplCopyWithImpl(_$BrandProfileModelImpl _value,
      $Res Function(_$BrandProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storeNameEn = null,
    Object? storeNameAr = null,
    Object? description = freezed,
    Object? logoUrl = freezed,
    Object? bannerImageUrl = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? joinedDate = freezed,
  }) {
    return _then(_$BrandProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storeNameEn: null == storeNameEn
          ? _value.storeNameEn
          : storeNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      storeNameAr: null == storeNameAr
          ? _value.storeNameAr
          : storeNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImageUrl: freezed == bannerImageUrl
          ? _value.bannerImageUrl
          : bannerImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      joinedDate: freezed == joinedDate
          ? _value.joinedDate
          : joinedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandProfileModelImpl implements _BrandProfileModel {
  const _$BrandProfileModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) @JsonKey(name: 'storeName') required this.storeNameEn,
      @HiveField(2) @JsonKey(name: 'storeNameAr') required this.storeNameAr,
      @HiveField(3) this.description,
      @HiveField(4) this.logoUrl,
      @HiveField(5) this.bannerImageUrl,
      @HiveField(6) this.averageRating,
      @HiveField(7) this.totalReviews,
      @HiveField(8) this.joinedDate});

  factory _$BrandProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandProfileModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
// ignore: invalid_annotation_target
  @override
  @HiveField(1)
  @JsonKey(name: 'storeName')
  final String storeNameEn;
// ignore: invalid_annotation_target
  @override
  @HiveField(2)
  @JsonKey(name: 'storeNameAr')
  final String storeNameAr;
  @override
  @HiveField(3)
  final String? description;
  @override
  @HiveField(4)
  final String? logoUrl;
  @override
  @HiveField(5)
  final String? bannerImageUrl;
  @override
  @HiveField(6)
  final double? averageRating;
  @override
  @HiveField(7)
  final int? totalReviews;
  @override
  @HiveField(8)
  final DateTime? joinedDate;

  @override
  String toString() {
    return 'BrandProfileModel(id: $id, storeNameEn: $storeNameEn, storeNameAr: $storeNameAr, description: $description, logoUrl: $logoUrl, bannerImageUrl: $bannerImageUrl, averageRating: $averageRating, totalReviews: $totalReviews, joinedDate: $joinedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storeNameEn, storeNameEn) ||
                other.storeNameEn == storeNameEn) &&
            (identical(other.storeNameAr, storeNameAr) ||
                other.storeNameAr == storeNameAr) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.bannerImageUrl, bannerImageUrl) ||
                other.bannerImageUrl == bannerImageUrl) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.joinedDate, joinedDate) ||
                other.joinedDate == joinedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storeNameEn,
      storeNameAr,
      description,
      logoUrl,
      bannerImageUrl,
      averageRating,
      totalReviews,
      joinedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandProfileModelImplCopyWith<_$BrandProfileModelImpl> get copyWith =>
      __$$BrandProfileModelImplCopyWithImpl<_$BrandProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandProfileModelImplToJson(
      this,
    );
  }
}

abstract class _BrandProfileModel implements BrandProfileModel {
  const factory _BrandProfileModel(
      {@HiveField(0) required final int id,
      @HiveField(1)
      @JsonKey(name: 'storeName')
      required final String storeNameEn,
      @HiveField(2)
      @JsonKey(name: 'storeNameAr')
      required final String storeNameAr,
      @HiveField(3) final String? description,
      @HiveField(4) final String? logoUrl,
      @HiveField(5) final String? bannerImageUrl,
      @HiveField(6) final double? averageRating,
      @HiveField(7) final int? totalReviews,
      @HiveField(8) final DateTime? joinedDate}) = _$BrandProfileModelImpl;

  factory _BrandProfileModel.fromJson(Map<String, dynamic> json) =
      _$BrandProfileModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override // ignore: invalid_annotation_target
  @HiveField(1)
  @JsonKey(name: 'storeName')
  String get storeNameEn;
  @override // ignore: invalid_annotation_target
  @HiveField(2)
  @JsonKey(name: 'storeNameAr')
  String get storeNameAr;
  @override
  @HiveField(3)
  String? get description;
  @override
  @HiveField(4)
  String? get logoUrl;
  @override
  @HiveField(5)
  String? get bannerImageUrl;
  @override
  @HiveField(6)
  double? get averageRating;
  @override
  @HiveField(7)
  int? get totalReviews;
  @override
  @HiveField(8)
  DateTime? get joinedDate;
  @override
  @JsonKey(ignore: true)
  _$$BrandProfileModelImplCopyWith<_$BrandProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
