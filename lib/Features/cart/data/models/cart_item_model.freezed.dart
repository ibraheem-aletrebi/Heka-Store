// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) {
  return _CartItemModel.fromJson(json);
}

/// @nodoc
mixin _$CartItemModel {
  int get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String get productNameAr => throw _privateConstructorUsedError;
  String get productNameEn => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPrice => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int get stockAvailable => throw _privateConstructorUsedError;
  bool get inStock => throw _privateConstructorUsedError;
  int get vendorId => throw _privateConstructorUsedError;
  String get vendorName => throw _privateConstructorUsedError;
  String get addedAt => throw _privateConstructorUsedError;
  List<SelectedVariantModel> get selectedVariants =>
      throw _privateConstructorUsedError;
  double get variantPriceAdjustment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemModelCopyWith<CartItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemModelCopyWith<$Res> {
  factory $CartItemModelCopyWith(
          CartItemModel value, $Res Function(CartItemModel) then) =
      _$CartItemModelCopyWithImpl<$Res, CartItemModel>;
  @useResult
  $Res call(
      {int id,
      int productId,
      String productNameAr,
      String productNameEn,
      String productImage,
      double price,
      double discountPrice,
      double unitPrice,
      int quantity,
      double totalPrice,
      int stockAvailable,
      bool inStock,
      int vendorId,
      String vendorName,
      String addedAt,
      List<SelectedVariantModel> selectedVariants,
      double variantPriceAdjustment});
}

/// @nodoc
class _$CartItemModelCopyWithImpl<$Res, $Val extends CartItemModel>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productNameAr = null,
    Object? productNameEn = null,
    Object? productImage = null,
    Object? price = null,
    Object? discountPrice = null,
    Object? unitPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? stockAvailable = null,
    Object? inStock = null,
    Object? vendorId = null,
    Object? vendorName = null,
    Object? addedAt = null,
    Object? selectedVariants = null,
    Object? variantPriceAdjustment = null,
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
      productNameAr: null == productNameAr
          ? _value.productNameAr
          : productNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      stockAvailable: null == stockAvailable
          ? _value.stockAvailable
          : stockAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String,
      selectedVariants: null == selectedVariants
          ? _value.selectedVariants
          : selectedVariants // ignore: cast_nullable_to_non_nullable
              as List<SelectedVariantModel>,
      variantPriceAdjustment: null == variantPriceAdjustment
          ? _value.variantPriceAdjustment
          : variantPriceAdjustment // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemModelImplCopyWith<$Res>
    implements $CartItemModelCopyWith<$Res> {
  factory _$$CartItemModelImplCopyWith(
          _$CartItemModelImpl value, $Res Function(_$CartItemModelImpl) then) =
      __$$CartItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int productId,
      String productNameAr,
      String productNameEn,
      String productImage,
      double price,
      double discountPrice,
      double unitPrice,
      int quantity,
      double totalPrice,
      int stockAvailable,
      bool inStock,
      int vendorId,
      String vendorName,
      String addedAt,
      List<SelectedVariantModel> selectedVariants,
      double variantPriceAdjustment});
}

/// @nodoc
class __$$CartItemModelImplCopyWithImpl<$Res>
    extends _$CartItemModelCopyWithImpl<$Res, _$CartItemModelImpl>
    implements _$$CartItemModelImplCopyWith<$Res> {
  __$$CartItemModelImplCopyWithImpl(
      _$CartItemModelImpl _value, $Res Function(_$CartItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productNameAr = null,
    Object? productNameEn = null,
    Object? productImage = null,
    Object? price = null,
    Object? discountPrice = null,
    Object? unitPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? stockAvailable = null,
    Object? inStock = null,
    Object? vendorId = null,
    Object? vendorName = null,
    Object? addedAt = null,
    Object? selectedVariants = null,
    Object? variantPriceAdjustment = null,
  }) {
    return _then(_$CartItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productNameAr: null == productNameAr
          ? _value.productNameAr
          : productNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      discountPrice: null == discountPrice
          ? _value.discountPrice
          : discountPrice // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      stockAvailable: null == stockAvailable
          ? _value.stockAvailable
          : stockAvailable // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as String,
      selectedVariants: null == selectedVariants
          ? _value._selectedVariants
          : selectedVariants // ignore: cast_nullable_to_non_nullable
              as List<SelectedVariantModel>,
      variantPriceAdjustment: null == variantPriceAdjustment
          ? _value.variantPriceAdjustment
          : variantPriceAdjustment // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemModelImpl implements _CartItemModel {
  const _$CartItemModelImpl(
      {required this.id,
      required this.productId,
      required this.productNameAr,
      required this.productNameEn,
      required this.productImage,
      required this.price,
      required this.discountPrice,
      required this.unitPrice,
      required this.quantity,
      required this.totalPrice,
      required this.stockAvailable,
      required this.inStock,
      required this.vendorId,
      required this.vendorName,
      required this.addedAt,
      final List<SelectedVariantModel> selectedVariants = const [],
      this.variantPriceAdjustment = 0.0})
      : _selectedVariants = selectedVariants;

  factory _$CartItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemModelImplFromJson(json);

  @override
  final int id;
  @override
  final int productId;
  @override
  final String productNameAr;
  @override
  final String productNameEn;
  @override
  final String productImage;
  @override
  final double price;
  @override
  final double discountPrice;
  @override
  final double unitPrice;
  @override
  final int quantity;
  @override
  final double totalPrice;
  @override
  final int stockAvailable;
  @override
  final bool inStock;
  @override
  final int vendorId;
  @override
  final String vendorName;
  @override
  final String addedAt;
  final List<SelectedVariantModel> _selectedVariants;
  @override
  @JsonKey()
  List<SelectedVariantModel> get selectedVariants {
    if (_selectedVariants is EqualUnmodifiableListView)
      return _selectedVariants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedVariants);
  }

  @override
  @JsonKey()
  final double variantPriceAdjustment;

  @override
  String toString() {
    return 'CartItemModel(id: $id, productId: $productId, productNameAr: $productNameAr, productNameEn: $productNameEn, productImage: $productImage, price: $price, discountPrice: $discountPrice, unitPrice: $unitPrice, quantity: $quantity, totalPrice: $totalPrice, stockAvailable: $stockAvailable, inStock: $inStock, vendorId: $vendorId, vendorName: $vendorName, addedAt: $addedAt, selectedVariants: $selectedVariants, variantPriceAdjustment: $variantPriceAdjustment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productNameAr, productNameAr) ||
                other.productNameAr == productNameAr) &&
            (identical(other.productNameEn, productNameEn) ||
                other.productNameEn == productNameEn) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPrice, discountPrice) ||
                other.discountPrice == discountPrice) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.stockAvailable, stockAvailable) ||
                other.stockAvailable == stockAvailable) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            const DeepCollectionEquality()
                .equals(other._selectedVariants, _selectedVariants) &&
            (identical(other.variantPriceAdjustment, variantPriceAdjustment) ||
                other.variantPriceAdjustment == variantPriceAdjustment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      productNameAr,
      productNameEn,
      productImage,
      price,
      discountPrice,
      unitPrice,
      quantity,
      totalPrice,
      stockAvailable,
      inStock,
      vendorId,
      vendorName,
      addedAt,
      const DeepCollectionEquality().hash(_selectedVariants),
      variantPriceAdjustment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      __$$CartItemModelImplCopyWithImpl<_$CartItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemModelImplToJson(
      this,
    );
  }
}

abstract class _CartItemModel implements CartItemModel {
  const factory _CartItemModel(
      {required final int id,
      required final int productId,
      required final String productNameAr,
      required final String productNameEn,
      required final String productImage,
      required final double price,
      required final double discountPrice,
      required final double unitPrice,
      required final int quantity,
      required final double totalPrice,
      required final int stockAvailable,
      required final bool inStock,
      required final int vendorId,
      required final String vendorName,
      required final String addedAt,
      final List<SelectedVariantModel> selectedVariants,
      final double variantPriceAdjustment}) = _$CartItemModelImpl;

  factory _CartItemModel.fromJson(Map<String, dynamic> json) =
      _$CartItemModelImpl.fromJson;

  @override
  int get id;
  @override
  int get productId;
  @override
  String get productNameAr;
  @override
  String get productNameEn;
  @override
  String get productImage;
  @override
  double get price;
  @override
  double get discountPrice;
  @override
  double get unitPrice;
  @override
  int get quantity;
  @override
  double get totalPrice;
  @override
  int get stockAvailable;
  @override
  bool get inStock;
  @override
  int get vendorId;
  @override
  String get vendorName;
  @override
  String get addedAt;
  @override
  List<SelectedVariantModel> get selectedVariants;
  @override
  double get variantPriceAdjustment;
  @override
  @JsonKey(ignore: true)
  _$$CartItemModelImplCopyWith<_$CartItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
