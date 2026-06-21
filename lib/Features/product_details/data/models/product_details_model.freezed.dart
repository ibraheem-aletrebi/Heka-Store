// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get code => throw _privateConstructorUsedError;
  @HiveField(2)
  String get nameAr => throw _privateConstructorUsedError;
  @HiveField(3)
  String get nameEn => throw _privateConstructorUsedError;
  @HiveField(4)
  String get descriptionAr => throw _privateConstructorUsedError;
  @HiveField(5)
  String get descriptionEn => throw _privateConstructorUsedError;
  @HiveField(6)
  double get price => throw _privateConstructorUsedError;
  @HiveField(7)
  double? get discountPrice => throw _privateConstructorUsedError;
  @HiveField(8)
  double get finalPrice => throw _privateConstructorUsedError;
  @HiveField(9)
  int get discountPercentage => throw _privateConstructorUsedError;
  @HiveField(10)
  int get stockQuantity => throw _privateConstructorUsedError;
  @HiveField(11)
  String get sku => throw _privateConstructorUsedError;
  @HiveField(12)
  bool get isEgyptianMade => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get madeInCity => throw _privateConstructorUsedError;
  @HiveField(14)
  String get madeInGovernorate => throw _privateConstructorUsedError;
  @HiveField(15)
  bool get isFeatured => throw _privateConstructorUsedError;
  @HiveField(16)
  bool get isActive => throw _privateConstructorUsedError;
  @HiveField(17)
  bool get inStock => throw _privateConstructorUsedError;
  @HiveField(18)
  int get viewCount =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: _ratingFromJson)
  @HiveField(19)
  double get averageRating => throw _privateConstructorUsedError;
  @HiveField(20)
  int get totalReviews => throw _privateConstructorUsedError;
  @HiveField(21)
  String get createdAt => throw _privateConstructorUsedError;
  @HiveField(22)
  String? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(23)
  int get vendorId => throw _privateConstructorUsedError;
  @HiveField(24)
  String get vendorName => throw _privateConstructorUsedError;
  @HiveField(25)
  String get vendorNameAr => throw _privateConstructorUsedError;
  @HiveField(26)
  int get categoryId => throw _privateConstructorUsedError;
  @HiveField(27)
  String get categoryNameAr => throw _privateConstructorUsedError;
  @HiveField(28)
  String get categoryNameEn => throw _privateConstructorUsedError;
  @HiveField(29)
  List<ProductImageModel> get images => throw _privateConstructorUsedError;
  @HiveField(30)
  List<ProductVariantModel> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String code,
      @HiveField(2) String nameAr,
      @HiveField(3) String nameEn,
      @HiveField(4) String descriptionAr,
      @HiveField(5) String descriptionEn,
      @HiveField(6) double price,
      @HiveField(7) double? discountPrice,
      @HiveField(8) double finalPrice,
      @HiveField(9) int discountPercentage,
      @HiveField(10) int stockQuantity,
      @HiveField(11) String sku,
      @HiveField(12) bool isEgyptianMade,
      @HiveField(13) String? madeInCity,
      @HiveField(14) String madeInGovernorate,
      @HiveField(15) bool isFeatured,
      @HiveField(16) bool isActive,
      @HiveField(17) bool inStock,
      @HiveField(18) int viewCount,
      @JsonKey(fromJson: _ratingFromJson) @HiveField(19) double averageRating,
      @HiveField(20) int totalReviews,
      @HiveField(21) String createdAt,
      @HiveField(22) String? updatedAt,
      @HiveField(23) int vendorId,
      @HiveField(24) String vendorName,
      @HiveField(25) String vendorNameAr,
      @HiveField(26) int categoryId,
      @HiveField(27) String categoryNameAr,
      @HiveField(28) String categoryNameEn,
      @HiveField(29) List<ProductImageModel> images,
      @HiveField(30) List<ProductVariantModel> variants});
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

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
    Object? descriptionAr = null,
    Object? descriptionEn = null,
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? discountPercentage = null,
    Object? stockQuantity = null,
    Object? sku = null,
    Object? isEgyptianMade = null,
    Object? madeInCity = freezed,
    Object? madeInGovernorate = null,
    Object? isFeatured = null,
    Object? isActive = null,
    Object? inStock = null,
    Object? viewCount = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? vendorId = null,
    Object? vendorName = null,
    Object? vendorNameAr = null,
    Object? categoryId = null,
    Object? categoryNameAr = null,
    Object? categoryNameEn = null,
    Object? images = null,
    Object? variants = null,
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
      descriptionAr: null == descriptionAr
          ? _value.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
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
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      isEgyptianMade: null == isEgyptianMade
          ? _value.isEgyptianMade
          : isEgyptianMade // ignore: cast_nullable_to_non_nullable
              as bool,
      madeInCity: freezed == madeInCity
          ? _value.madeInCity
          : madeInCity // ignore: cast_nullable_to_non_nullable
              as String?,
      madeInGovernorate: null == madeInGovernorate
          ? _value.madeInGovernorate
          : madeInGovernorate // ignore: cast_nullable_to_non_nullable
              as String,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorNameAr: null == vendorNameAr
          ? _value.vendorNameAr
          : vendorNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryNameAr: null == categoryNameAr
          ? _value.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageModel>,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String code,
      @HiveField(2) String nameAr,
      @HiveField(3) String nameEn,
      @HiveField(4) String descriptionAr,
      @HiveField(5) String descriptionEn,
      @HiveField(6) double price,
      @HiveField(7) double? discountPrice,
      @HiveField(8) double finalPrice,
      @HiveField(9) int discountPercentage,
      @HiveField(10) int stockQuantity,
      @HiveField(11) String sku,
      @HiveField(12) bool isEgyptianMade,
      @HiveField(13) String? madeInCity,
      @HiveField(14) String madeInGovernorate,
      @HiveField(15) bool isFeatured,
      @HiveField(16) bool isActive,
      @HiveField(17) bool inStock,
      @HiveField(18) int viewCount,
      @JsonKey(fromJson: _ratingFromJson) @HiveField(19) double averageRating,
      @HiveField(20) int totalReviews,
      @HiveField(21) String createdAt,
      @HiveField(22) String? updatedAt,
      @HiveField(23) int vendorId,
      @HiveField(24) String vendorName,
      @HiveField(25) String vendorNameAr,
      @HiveField(26) int categoryId,
      @HiveField(27) String categoryNameAr,
      @HiveField(28) String categoryNameEn,
      @HiveField(29) List<ProductImageModel> images,
      @HiveField(30) List<ProductVariantModel> variants});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? descriptionAr = null,
    Object? descriptionEn = null,
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? discountPercentage = null,
    Object? stockQuantity = null,
    Object? sku = null,
    Object? isEgyptianMade = null,
    Object? madeInCity = freezed,
    Object? madeInGovernorate = null,
    Object? isFeatured = null,
    Object? isActive = null,
    Object? inStock = null,
    Object? viewCount = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? vendorId = null,
    Object? vendorName = null,
    Object? vendorNameAr = null,
    Object? categoryId = null,
    Object? categoryNameAr = null,
    Object? categoryNameEn = null,
    Object? images = null,
    Object? variants = null,
  }) {
    return _then(_$ProductModelImpl(
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
      descriptionAr: null == descriptionAr
          ? _value.descriptionAr
          : descriptionAr // ignore: cast_nullable_to_non_nullable
              as String,
      descriptionEn: null == descriptionEn
          ? _value.descriptionEn
          : descriptionEn // ignore: cast_nullable_to_non_nullable
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
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as int,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      isEgyptianMade: null == isEgyptianMade
          ? _value.isEgyptianMade
          : isEgyptianMade // ignore: cast_nullable_to_non_nullable
              as bool,
      madeInCity: freezed == madeInCity
          ? _value.madeInCity
          : madeInCity // ignore: cast_nullable_to_non_nullable
              as String?,
      madeInGovernorate: null == madeInGovernorate
          ? _value.madeInGovernorate
          : madeInGovernorate // ignore: cast_nullable_to_non_nullable
              as String,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorNameAr: null == vendorNameAr
          ? _value.vendorNameAr
          : vendorNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryNameAr: null == categoryNameAr
          ? _value.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImageModel>,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl extends _ProductModel {
  const _$ProductModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.code,
      @HiveField(2) required this.nameAr,
      @HiveField(3) required this.nameEn,
      @HiveField(4) required this.descriptionAr,
      @HiveField(5) required this.descriptionEn,
      @HiveField(6) required this.price,
      @HiveField(7) this.discountPrice,
      @HiveField(8) required this.finalPrice,
      @HiveField(9) required this.discountPercentage,
      @HiveField(10) required this.stockQuantity,
      @HiveField(11) required this.sku,
      @HiveField(12) required this.isEgyptianMade,
      @HiveField(13) this.madeInCity,
      @HiveField(14) required this.madeInGovernorate,
      @HiveField(15) required this.isFeatured,
      @HiveField(16) required this.isActive,
      @HiveField(17) required this.inStock,
      @HiveField(18) required this.viewCount,
      @JsonKey(fromJson: _ratingFromJson)
      @HiveField(19)
      required this.averageRating,
      @HiveField(20) required this.totalReviews,
      @HiveField(21) required this.createdAt,
      @HiveField(22) this.updatedAt,
      @HiveField(23) required this.vendorId,
      @HiveField(24) required this.vendorName,
      @HiveField(25) required this.vendorNameAr,
      @HiveField(26) required this.categoryId,
      @HiveField(27) required this.categoryNameAr,
      @HiveField(28) required this.categoryNameEn,
      @HiveField(29) required final List<ProductImageModel> images,
      @HiveField(30) required final List<ProductVariantModel> variants})
      : _images = images,
        _variants = variants,
        super._();

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

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
  final String descriptionAr;
  @override
  @HiveField(5)
  final String descriptionEn;
  @override
  @HiveField(6)
  final double price;
  @override
  @HiveField(7)
  final double? discountPrice;
  @override
  @HiveField(8)
  final double finalPrice;
  @override
  @HiveField(9)
  final int discountPercentage;
  @override
  @HiveField(10)
  final int stockQuantity;
  @override
  @HiveField(11)
  final String sku;
  @override
  @HiveField(12)
  final bool isEgyptianMade;
  @override
  @HiveField(13)
  final String? madeInCity;
  @override
  @HiveField(14)
  final String madeInGovernorate;
  @override
  @HiveField(15)
  final bool isFeatured;
  @override
  @HiveField(16)
  final bool isActive;
  @override
  @HiveField(17)
  final bool inStock;
  @override
  @HiveField(18)
  final int viewCount;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: _ratingFromJson)
  @HiveField(19)
  final double averageRating;
  @override
  @HiveField(20)
  final int totalReviews;
  @override
  @HiveField(21)
  final String createdAt;
  @override
  @HiveField(22)
  final String? updatedAt;
  @override
  @HiveField(23)
  final int vendorId;
  @override
  @HiveField(24)
  final String vendorName;
  @override
  @HiveField(25)
  final String vendorNameAr;
  @override
  @HiveField(26)
  final int categoryId;
  @override
  @HiveField(27)
  final String categoryNameAr;
  @override
  @HiveField(28)
  final String categoryNameEn;
  final List<ProductImageModel> _images;
  @override
  @HiveField(29)
  List<ProductImageModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  final List<ProductVariantModel> _variants;
  @override
  @HiveField(30)
  List<ProductVariantModel> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, code: $code, nameAr: $nameAr, nameEn: $nameEn, descriptionAr: $descriptionAr, descriptionEn: $descriptionEn, price: $price, discountPrice: $discountPrice, finalPrice: $finalPrice, discountPercentage: $discountPercentage, stockQuantity: $stockQuantity, sku: $sku, isEgyptianMade: $isEgyptianMade, madeInCity: $madeInCity, madeInGovernorate: $madeInGovernorate, isFeatured: $isFeatured, isActive: $isActive, inStock: $inStock, viewCount: $viewCount, averageRating: $averageRating, totalReviews: $totalReviews, createdAt: $createdAt, updatedAt: $updatedAt, vendorId: $vendorId, vendorName: $vendorName, vendorNameAr: $vendorNameAr, categoryId: $categoryId, categoryNameAr: $categoryNameAr, categoryNameEn: $categoryNameEn, images: $images, variants: $variants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.descriptionAr, descriptionAr) ||
                other.descriptionAr == descriptionAr) &&
            (identical(other.descriptionEn, descriptionEn) ||
                other.descriptionEn == descriptionEn) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.isEgyptianMade, isEgyptianMade) ||
                other.isEgyptianMade == isEgyptianMade) &&
            (identical(other.madeInCity, madeInCity) ||
                other.madeInCity == madeInCity) &&
            (identical(other.madeInGovernorate, madeInGovernorate) ||
                other.madeInGovernorate == madeInGovernorate) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorNameAr, vendorNameAr) ||
                other.vendorNameAr == vendorNameAr) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryNameAr, categoryNameAr) ||
                other.categoryNameAr == categoryNameAr) &&
            (identical(other.categoryNameEn, categoryNameEn) ||
                other.categoryNameEn == categoryNameEn) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        code,
        nameAr,
        nameEn,
        descriptionAr,
        descriptionEn,
        price,
        discountPrice,
        finalPrice,
        discountPercentage,
        stockQuantity,
        sku,
        isEgyptianMade,
        madeInCity,
        madeInGovernorate,
        isFeatured,
        isActive,
        inStock,
        viewCount,
        averageRating,
        totalReviews,
        createdAt,
        updatedAt,
        vendorId,
        vendorName,
        vendorNameAr,
        categoryId,
        categoryNameAr,
        categoryNameEn,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_variants)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel extends ProductDetailsModel {
  const factory _ProductModel(
          {@HiveField(0) required final int id,
          @HiveField(1) required final String code,
          @HiveField(2) required final String nameAr,
          @HiveField(3) required final String nameEn,
          @HiveField(4) required final String descriptionAr,
          @HiveField(5) required final String descriptionEn,
          @HiveField(6) required final double price,
          @HiveField(7) final double? discountPrice,
          @HiveField(8) required final double finalPrice,
          @HiveField(9) required final int discountPercentage,
          @HiveField(10) required final int stockQuantity,
          @HiveField(11) required final String sku,
          @HiveField(12) required final bool isEgyptianMade,
          @HiveField(13) final String? madeInCity,
          @HiveField(14) required final String madeInGovernorate,
          @HiveField(15) required final bool isFeatured,
          @HiveField(16) required final bool isActive,
          @HiveField(17) required final bool inStock,
          @HiveField(18) required final int viewCount,
          @JsonKey(fromJson: _ratingFromJson)
          @HiveField(19)
          required final double averageRating,
          @HiveField(20) required final int totalReviews,
          @HiveField(21) required final String createdAt,
          @HiveField(22) final String? updatedAt,
          @HiveField(23) required final int vendorId,
          @HiveField(24) required final String vendorName,
          @HiveField(25) required final String vendorNameAr,
          @HiveField(26) required final int categoryId,
          @HiveField(27) required final String categoryNameAr,
          @HiveField(28) required final String categoryNameEn,
          @HiveField(29) required final List<ProductImageModel> images,
          @HiveField(30) required final List<ProductVariantModel> variants}) =
      _$ProductModelImpl;
  const _ProductModel._() : super._();

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

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
  String get descriptionAr;
  @override
  @HiveField(5)
  String get descriptionEn;
  @override
  @HiveField(6)
  double get price;
  @override
  @HiveField(7)
  double? get discountPrice;
  @override
  @HiveField(8)
  double get finalPrice;
  @override
  @HiveField(9)
  int get discountPercentage;
  @override
  @HiveField(10)
  int get stockQuantity;
  @override
  @HiveField(11)
  String get sku;
  @override
  @HiveField(12)
  bool get isEgyptianMade;
  @override
  @HiveField(13)
  String? get madeInCity;
  @override
  @HiveField(14)
  String get madeInGovernorate;
  @override
  @HiveField(15)
  bool get isFeatured;
  @override
  @HiveField(16)
  bool get isActive;
  @override
  @HiveField(17)
  bool get inStock;
  @override
  @HiveField(18)
  int get viewCount;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: _ratingFromJson)
  @HiveField(19)
  double get averageRating;
  @override
  @HiveField(20)
  int get totalReviews;
  @override
  @HiveField(21)
  String get createdAt;
  @override
  @HiveField(22)
  String? get updatedAt;
  @override
  @HiveField(23)
  int get vendorId;
  @override
  @HiveField(24)
  String get vendorName;
  @override
  @HiveField(25)
  String get vendorNameAr;
  @override
  @HiveField(26)
  int get categoryId;
  @override
  @HiveField(27)
  String get categoryNameAr;
  @override
  @HiveField(28)
  String get categoryNameEn;
  @override
  @HiveField(29)
  List<ProductImageModel> get images;
  @override
  @HiveField(30)
  List<ProductVariantModel> get variants;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
