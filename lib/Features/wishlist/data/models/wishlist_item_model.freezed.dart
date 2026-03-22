// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistItemModel _$WishlistItemModelFromJson(Map<String, dynamic> json) {
  return _WishlistItemModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistItemModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int get productId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get productName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get productNameAr => throw _privateConstructorUsedError;
  @HiveField(4)
  double get price => throw _privateConstructorUsedError;
  @HiveField(5)
  double? get discountPrice => throw _privateConstructorUsedError;
  @HiveField(6)
  double get finalPrice => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get imageUrl => throw _privateConstructorUsedError;
  @HiveField(8)
  String get vendorName => throw _privateConstructorUsedError;
  @HiveField(9)
  int get vendorId => throw _privateConstructorUsedError;
  @HiveField(10)
  bool get inStock => throw _privateConstructorUsedError;
  @HiveField(11)
  double get averageRating => throw _privateConstructorUsedError;
  @HiveField(12)
  int get totalReviews => throw _privateConstructorUsedError;
  @HiveField(13)
  String get addedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistItemModelCopyWith<WishlistItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistItemModelCopyWith<$Res> {
  factory $WishlistItemModelCopyWith(
          WishlistItemModel value, $Res Function(WishlistItemModel) then) =
      _$WishlistItemModelCopyWithImpl<$Res, WishlistItemModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int productId,
      @HiveField(2) String productName,
      @HiveField(3) String productNameAr,
      @HiveField(4) double price,
      @HiveField(5) double? discountPrice,
      @HiveField(6) double finalPrice,
      @HiveField(7) String? imageUrl,
      @HiveField(8) String vendorName,
      @HiveField(9) int vendorId,
      @HiveField(10) bool inStock,
      @HiveField(11) double averageRating,
      @HiveField(12) int totalReviews,
      @HiveField(13) String addedAt});
}

/// @nodoc
class _$WishlistItemModelCopyWithImpl<$Res, $Val extends WishlistItemModel>
    implements $WishlistItemModelCopyWith<$Res> {
  _$WishlistItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? productNameAr = null,
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? imageUrl = freezed,
    Object? vendorName = null,
    Object? vendorId = null,
    Object? inStock = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? addedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productNameAr: null == productNameAr
          ? _value.productNameAr
          : productNameAr // ignore: cast_nullable_to_non_nullable
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistItemModelImplCopyWith<$Res>
    implements $WishlistItemModelCopyWith<$Res> {
  factory _$$WishlistItemModelImplCopyWith(_$WishlistItemModelImpl value,
          $Res Function(_$WishlistItemModelImpl) then) =
      __$$WishlistItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int productId,
      @HiveField(2) String productName,
      @HiveField(3) String productNameAr,
      @HiveField(4) double price,
      @HiveField(5) double? discountPrice,
      @HiveField(6) double finalPrice,
      @HiveField(7) String? imageUrl,
      @HiveField(8) String vendorName,
      @HiveField(9) int vendorId,
      @HiveField(10) bool inStock,
      @HiveField(11) double averageRating,
      @HiveField(12) int totalReviews,
      @HiveField(13) String addedAt});
}

/// @nodoc
class __$$WishlistItemModelImplCopyWithImpl<$Res>
    extends _$WishlistItemModelCopyWithImpl<$Res, _$WishlistItemModelImpl>
    implements _$$WishlistItemModelImplCopyWith<$Res> {
  __$$WishlistItemModelImplCopyWithImpl(_$WishlistItemModelImpl _value,
      $Res Function(_$WishlistItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productName = null,
    Object? productNameAr = null,
    Object? price = null,
    Object? discountPrice = freezed,
    Object? finalPrice = null,
    Object? imageUrl = freezed,
    Object? vendorName = null,
    Object? vendorId = null,
    Object? inStock = null,
    Object? averageRating = null,
    Object? totalReviews = null,
    Object? addedAt = null,
  }) {
    return _then(_$WishlistItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productNameAr: null == productNameAr
          ? _value.productNameAr
          : productNameAr // ignore: cast_nullable_to_non_nullable
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      totalReviews: null == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistItemModelImpl implements _WishlistItemModel {
  const _$WishlistItemModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.productId,
      @HiveField(2) required this.productName,
      @HiveField(3) required this.productNameAr,
      @HiveField(4) required this.price,
      @HiveField(5) this.discountPrice,
      @HiveField(6) required this.finalPrice,
      @HiveField(7) this.imageUrl,
      @HiveField(8) required this.vendorName,
      @HiveField(9) required this.vendorId,
      @HiveField(10) required this.inStock,
      @HiveField(11) required this.averageRating,
      @HiveField(12) required this.totalReviews,
      @HiveField(13) required this.addedAt});

  factory _$WishlistItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistItemModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int productId;
  @override
  @HiveField(2)
  final String productName;
  @override
  @HiveField(3)
  final String productNameAr;
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
  final String? imageUrl;
  @override
  @HiveField(8)
  final String vendorName;
  @override
  @HiveField(9)
  final int vendorId;
  @override
  @HiveField(10)
  final bool inStock;
  @override
  @HiveField(11)
  final double averageRating;
  @override
  @HiveField(12)
  final int totalReviews;
  @override
  @HiveField(13)
  final String addedAt;

  @override
  String toString() {
    return 'WishlistItemModel(id: $id, productId: $productId, productName: $productName, productNameAr: $productNameAr, price: $price, discountPrice: $discountPrice, finalPrice: $finalPrice, imageUrl: $imageUrl, vendorName: $vendorName, vendorId: $vendorId, inStock: $inStock, averageRating: $averageRating, totalReviews: $totalReviews, addedAt: $addedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productNameAr, productNameAr) ||
                other.productNameAr == productNameAr) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      productName,
      productNameAr,
      price,
      discountPrice,
      finalPrice,
      imageUrl,
      vendorName,
      vendorId,
      inStock,
      averageRating,
      totalReviews,
      addedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistItemModelImplCopyWith<_$WishlistItemModelImpl> get copyWith =>
      __$$WishlistItemModelImplCopyWithImpl<_$WishlistItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistItemModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistItemModel implements WishlistItemModel {
  const factory _WishlistItemModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final int productId,
      @HiveField(2) required final String productName,
      @HiveField(3) required final String productNameAr,
      @HiveField(4) required final double price,
      @HiveField(5) final double? discountPrice,
      @HiveField(6) required final double finalPrice,
      @HiveField(7) final String? imageUrl,
      @HiveField(8) required final String vendorName,
      @HiveField(9) required final int vendorId,
      @HiveField(10) required final bool inStock,
      @HiveField(11) required final double averageRating,
      @HiveField(12) required final int totalReviews,
      @HiveField(13) required final String addedAt}) = _$WishlistItemModelImpl;

  factory _WishlistItemModel.fromJson(Map<String, dynamic> json) =
      _$WishlistItemModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int get productId;
  @override
  @HiveField(2)
  String get productName;
  @override
  @HiveField(3)
  String get productNameAr;
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
  String? get imageUrl;
  @override
  @HiveField(8)
  String get vendorName;
  @override
  @HiveField(9)
  int get vendorId;
  @override
  @HiveField(10)
  bool get inStock;
  @override
  @HiveField(11)
  double get averageRating;
  @override
  @HiveField(12)
  int get totalReviews;
  @override
  @HiveField(13)
  String get addedAt;
  @override
  @JsonKey(ignore: true)
  _$$WishlistItemModelImplCopyWith<_$WishlistItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
