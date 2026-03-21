// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get discountPrice => throw _privateConstructorUsedError;
  double get finalPrice => throw _privateConstructorUsedError;
  double? get discountPercentage => throw _privateConstructorUsedError;
  bool get inStock => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  String? get primaryImageUrl => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get totalReviews => throw _privateConstructorUsedError;
  String get vendorName => throw _privateConstructorUsedError;
  String get categoryNameEn => throw _privateConstructorUsedError;
  String get categoryNameAr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {int id,
      String code,
      String nameAr,
      String nameEn,
      double price,
      double? discountPrice,
      double finalPrice,
      double? discountPercentage,
      bool inStock,
      bool isFeatured,
      String? primaryImageUrl,
      double averageRating,
      int totalReviews,
      String vendorName,
      String categoryNameEn,
      String categoryNameAr});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

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
    Object? primaryImageUrl = freezed,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? vendorName = null,
    Object? categoryNameEn = null,
    Object? categoryNameAr = null,
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
              as double?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryImageUrl: freezed == primaryImageUrl
          ? _value.primaryImageUrl
          : primaryImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameAr: null == categoryNameAr
          ? _value.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      String nameAr,
      String nameEn,
      double price,
      double? discountPrice,
      double finalPrice,
      double? discountPercentage,
      bool inStock,
      bool isFeatured,
      String? primaryImageUrl,
      double averageRating,
      int totalReviews,
      String vendorName,
      String categoryNameEn,
      String categoryNameAr});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
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
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? discountPercentage = freezed,
    Object? inStock = null,
    Object? isFeatured = null,
    Object? primaryImageUrl = freezed,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? vendorName = null,
    Object? categoryNameEn = null,
    Object? categoryNameAr = null,
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
              as double?,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryImageUrl: freezed == primaryImageUrl
          ? _value.primaryImageUrl
          : primaryImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameEn: null == categoryNameEn
          ? _value.categoryNameEn
          : categoryNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      categoryNameAr: null == categoryNameAr
          ? _value.categoryNameAr
          : categoryNameAr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl(
      {required this.id,
      required this.code,
      required this.nameAr,
      required this.nameEn,
      required this.price,
      this.discountPrice,
      required this.finalPrice,
      this.discountPercentage,
      required this.inStock,
      required this.isFeatured,
      this.primaryImageUrl,
      required this.averageRating,
      required this.totalReviews,
      required this.vendorName,
      required this.categoryNameEn,
      required this.categoryNameAr});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String nameAr;
  @override
  final String nameEn;
  @override
  final double price;
  @override
  final double? discountPrice;
  @override
  final double finalPrice;
  @override
  final double? discountPercentage;
  @override
  final bool inStock;
  @override
  final bool isFeatured;
  @override
  final String? primaryImageUrl;
  @override
  final double averageRating;
  @override
  final int totalReviews;
  @override
  final String vendorName;
  @override
  final String categoryNameEn;
  @override
  final String categoryNameAr;

  @override
  String toString() {
    return 'ProductModel(id: $id, code: $code, nameAr: $nameAr, nameEn: $nameEn, price: $price, discountPrice: $discountPrice, finalPrice: $finalPrice, discountPercentage: $discountPercentage, inStock: $inStock, isFeatured: $isFeatured, primaryImageUrl: $primaryImageUrl, averageRating: $averageRating, totalReviews: $totalReviews, vendorName: $vendorName, categoryNameEn: $categoryNameEn, categoryNameAr: $categoryNameAr)';
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
      primaryImageUrl,
      averageRating,
      totalReviews,
      vendorName,
      categoryNameEn,
      categoryNameAr);

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

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel(
      {required final int id,
      required final String code,
      required final String nameAr,
      required final String nameEn,
      required final double price,
      final double? discountPrice,
      required final double finalPrice,
      final double? discountPercentage,
      required final bool inStock,
      required final bool isFeatured,
      final String? primaryImageUrl,
      required final double averageRating,
      required final int totalReviews,
      required final String vendorName,
      required final String categoryNameEn,
      required final String categoryNameAr}) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  String get nameAr;
  @override
  String get nameEn;
  @override
  double get price;
  @override
  double? get discountPrice;
  @override
  double get finalPrice;
  @override
  double? get discountPercentage;
  @override
  bool get inStock;
  @override
  bool get isFeatured;
  @override
  String? get primaryImageUrl;
  @override
  double get averageRating;
  @override
  int get totalReviews;
  @override
  String get vendorName;
  @override
  String get categoryNameEn;
  @override
  String get categoryNameAr;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
