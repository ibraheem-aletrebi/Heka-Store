// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandProductModel _$BrandProductModelFromJson(Map<String, dynamic> json) {
  return _BrandProductModel.fromJson(json);
}

/// @nodoc
mixin _$BrandProductModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get code => throw _privateConstructorUsedError;
  @HiveField(2)
  String get nameAr => throw _privateConstructorUsedError;
  @HiveField(3)
  String get nameEn => throw _privateConstructorUsedError;
  @HiveField(4)
  double get price => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get discountPrice => throw _privateConstructorUsedError;
  @HiveField(6)
  double get finalPrice => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get discountPercentage => throw _privateConstructorUsedError;
  @HiveField(8)
  bool get inStock => throw _privateConstructorUsedError;
  @HiveField(9)
  bool get isFeatured => throw _privateConstructorUsedError;
  @HiveField(10)
  bool get isActive => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get primaryImageUrl => throw _privateConstructorUsedError;
  @HiveField(12)
  double? get averageRating => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get totalReviews => throw _privateConstructorUsedError;
  @HiveField(14)
  String? get vendorName => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get categoryNameEn => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get categoryNameAr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandProductModelCopyWith<BrandProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProductModelCopyWith<$Res> {
  factory $BrandProductModelCopyWith(
          BrandProductModel value, $Res Function(BrandProductModel) then) =
      _$BrandProductModelCopyWithImpl<$Res, BrandProductModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String code,
      @HiveField(2) String nameAr,
      @HiveField(3) String nameEn,
      @HiveField(4) double price,
      @HiveField(5) double? discountPrice,
      @HiveField(6) double finalPrice,
      @HiveField(7) int? discountPercentage,
      @HiveField(8) bool inStock,
      @HiveField(9) bool isFeatured,
      @HiveField(10) bool isActive,
      @HiveField(11) String? primaryImageUrl,
      @HiveField(12) double? averageRating,
      @HiveField(13) int? totalReviews,
      @HiveField(14) String? vendorName,
      @HiveField(15) String? categoryNameEn,
      @HiveField(16) String? categoryNameAr});
}

/// @nodoc
class _$BrandProductModelCopyWithImpl<$Res, $Val extends BrandProductModel>
    implements $BrandProductModelCopyWith<$Res> {
  _$BrandProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? discountPercentage = freezed,
    Object? inStock = null,
    Object? isFeatured = null,
    Object? isActive = null,
    Object? primaryImageUrl = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? vendorName = freezed,
    Object? categoryNameEn = freezed,
    Object? categoryNameAr = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      finalPrice: null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryImageUrl: freezed == primaryImageUrl
          ? _value.primaryImageUrl
          : primaryImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameEn: freezed == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameAr: freezed == categoryNameAr
          ? _value.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandProductModelImplCopyWith<$Res>
    implements $BrandProductModelCopyWith<$Res> {
  factory _$$BrandProductModelImplCopyWith(_$BrandProductModelImpl value,
          $Res Function(_$BrandProductModelImpl) then) =
      __$$BrandProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String code,
      @HiveField(2) String nameAr,
      @HiveField(3) String nameEn,
      @HiveField(4) double price,
      @HiveField(5) double? discountPrice,
      @HiveField(6) double finalPrice,
      @HiveField(7) int? discountPercentage,
      @HiveField(8) bool inStock,
      @HiveField(9) bool isFeatured,
      @HiveField(10) bool isActive,
      @HiveField(11) String? primaryImageUrl,
      @HiveField(12) double? averageRating,
      @HiveField(13) int? totalReviews,
      @HiveField(14) String? vendorName,
      @HiveField(15) String? categoryNameEn,
      @HiveField(16) String? categoryNameAr});
}

/// @nodoc
class __$$BrandProductModelImplCopyWithImpl<$Res>
    extends _$BrandProductModelCopyWithImpl<$Res, _$BrandProductModelImpl>
    implements _$$BrandProductModelImplCopyWith<$Res> {
  __$$BrandProductModelImplCopyWithImpl(_$BrandProductModelImpl _value,
      $Res Function(_$BrandProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? discountPercentage = freezed,
    Object? inStock = null,
    Object? isFeatured = null,
    Object? isActive = null,
    Object? primaryImageUrl = freezed,
    Object? averageRating = freezed,
    Object? totalReviews = freezed,
    Object? vendorName = freezed,
    Object? categoryNameEn = freezed,
    Object? categoryNameAr = freezed,
  }) {
    return _then(_$BrandProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPrice: freezed == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      finalPrice: null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryImageUrl: freezed == primaryImageUrl
          ? _value.primaryImageUrl
          : primaryImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: freezed == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameEn: freezed == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryNameAr: freezed == categoryNameAr
          ? _value.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandProductModelImpl implements _BrandProductModel {
  const _$BrandProductModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.code,
      @HiveField(2) required this.nameAr,
      @HiveField(3) required this.nameEn,
      @HiveField(4) required this.price,
      @HiveField(5) this.discountPrice,
      @HiveField(6) required this.finalPrice,
      @HiveField(7) this.discountPercentage,
      @HiveField(8) required this.inStock,
      @HiveField(9) required this.isFeatured,
      @HiveField(10) required this.isActive,
      @HiveField(11) this.primaryImageUrl,
      @HiveField(12) this.averageRating,
      @HiveField(13) this.totalReviews,
      @HiveField(14) this.vendorName,
      @HiveField(15) this.categoryNameEn,
      @HiveField(16) this.categoryNameAr});

  factory _$BrandProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandProductModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String code;
  @override
  @HiveField(2)
  final String nameAr;
  @override
  @HiveField(3)
  final String nameEn;
  @override
  @HiveField(4)
  final double price;
  @override
  @HiveField(5)
  final double? discountPrice;
  @override
  @HiveField(6)
  final double finalPrice;
  @override
  @HiveField(7)
  final int? discountPercentage;
  @override
  @HiveField(8)
  final bool inStock;
  @override
  @HiveField(9)
  final bool isFeatured;
  @override
  @HiveField(10)
  final bool isActive;
  @override
  @HiveField(11)
  final String? primaryImageUrl;
  @override
  @HiveField(12)
  final double? averageRating;
  @override
  @HiveField(13)
  final int? totalReviews;
  @override
  @HiveField(14)
  final String? vendorName;
  @override
  @HiveField(15)
  final String? categoryNameEn;
  @override
  @HiveField(16)
  final String? categoryNameAr;

  @override
  String toString() {
    return 'BrandProductModel(id: $id, code: $code, nameAr: $nameAr, nameEn: $nameEn, price: $price, discountPrice: $discountPrice, finalPrice: $finalPrice, discountPercentage: $discountPercentage, inStock: $inStock, isFeatured: $isFeatured, isActive: $isActive, primaryImageUrl: $primaryImageUrl, averageRating: $averageRating, totalReviews: $totalReviews, vendorName: $vendorName, categoryNameEn: $categoryNameEn, categoryNameAr: $categoryNameAr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.primaryImageUrl, primaryImageUrl) ||
                other.primaryImageUrl == primaryImageUrl) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.categoryNameEn, categoryNameEn) ||
                other.categoryNameEn == categoryNameEn) &&
            (identical(other.categoryNameAr, categoryNameAr) ||
                other.categoryNameAr == categoryNameAr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      code,
      nameAr,
      nameEn,
      price,
      discountPrice,
      finalPrice,
      discountPercentage,
      inStock,
      isFeatured,
      isActive,
      primaryImageUrl,
      averageRating,
      totalReviews,
      vendorName,
      categoryNameEn,
      categoryNameAr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandProductModelImplCopyWith<_$BrandProductModelImpl> get copyWith =>
      __$$BrandProductModelImplCopyWithImpl<_$BrandProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandProductModelImplToJson(
      this,
    );
  }
}

abstract class _BrandProductModel implements BrandProductModel {
  const factory _BrandProductModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String code,
      @HiveField(2) required final String nameAr,
      @HiveField(3) required final String nameEn,
      @HiveField(4) required final double price,
      @HiveField(5) final double? discountPrice,
      @HiveField(6) required final double finalPrice,
      @HiveField(7) final int? discountPercentage,
      @HiveField(8) required final bool inStock,
      @HiveField(9) required final bool isFeatured,
      @HiveField(10) required final bool isActive,
      @HiveField(11) final String? primaryImageUrl,
      @HiveField(12) final double? averageRating,
      @HiveField(13) final int? totalReviews,
      @HiveField(14) final String? vendorName,
      @HiveField(15) final String? categoryNameEn,
      @HiveField(16) final String? categoryNameAr}) = _$BrandProductModelImpl;

  factory _BrandProductModel.fromJson(Map<String, dynamic> json) =
      _$BrandProductModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get code;
  @override
  @HiveField(2)
  String get nameAr;
  @override
  @HiveField(3)
  String get nameEn;
  @override
  @HiveField(4)
  double get price;
  @override
  @HiveField(5)
  double? get discountPrice;
  @override
  @HiveField(6)
  double get finalPrice;
  @override
  @HiveField(7)
  int? get discountPercentage;
  @override
  @HiveField(8)
  bool get inStock;
  @override
  @HiveField(9)
  bool get isFeatured;
  @override
  @HiveField(10)
  bool get isActive;
  @override
  @HiveField(11)
  String? get primaryImageUrl;
  @override
  @HiveField(12)
  double? get averageRating;
  @override
  @HiveField(13)
  int? get totalReviews;
  @override
  @HiveField(14)
  String? get vendorName;
  @override
  @HiveField(15)
  String? get categoryNameEn;
  @override
  @HiveField(16)
  String? get categoryNameAr;
  @override
  @JsonKey(ignore: true)
  _$$BrandProductModelImplCopyWith<_$BrandProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
