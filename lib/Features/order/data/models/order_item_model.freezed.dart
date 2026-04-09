// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) {
  return _OrderItemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModel {
  int get id => throw _privateConstructorUsedError;
  int get productId => throw _privateConstructorUsedError;
  String get productNameAr => throw _privateConstructorUsedError;
  String get productNameEn => throw _privateConstructorUsedError;
  String get productImage => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int? get variantId => throw _privateConstructorUsedError;
  String? get variantTypeName => throw _privateConstructorUsedError;
  String? get variantValue => throw _privateConstructorUsedError;
  String? get variantColorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) then) =
      _$OrderItemModelCopyWithImpl<$Res, OrderItemModel>;
  @useResult
  $Res call(
      {int id,
      int productId,
      String productNameAr,
      String productNameEn,
      String productImage,
      int quantity,
      double unitPrice,
      double totalPrice,
      int? variantId,
      String? variantTypeName,
      String? variantValue,
      String? variantColorHex});
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res, $Val extends OrderItemModel>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._value, this._then);

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
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? variantId = freezed,
    Object? variantTypeName = freezed,
    Object? variantValue = freezed,
    Object? variantColorHex = freezed,
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantTypeName: freezed == variantTypeName
          ? _value.variantTypeName
          : variantTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantValue: freezed == variantValue
          ? _value.variantValue
          : variantValue // ignore: cast_nullable_to_non_nullable
              as String?,
      variantColorHex: freezed == variantColorHex
          ? _value.variantColorHex
          : variantColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemModelImplCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$$OrderItemModelImplCopyWith(_$OrderItemModelImpl value,
          $Res Function(_$OrderItemModelImpl) then) =
      __$$OrderItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int productId,
      String productNameAr,
      String productNameEn,
      String productImage,
      int quantity,
      double unitPrice,
      double totalPrice,
      int? variantId,
      String? variantTypeName,
      String? variantValue,
      String? variantColorHex});
}

/// @nodoc
class __$$OrderItemModelImplCopyWithImpl<$Res>
    extends _$OrderItemModelCopyWithImpl<$Res, _$OrderItemModelImpl>
    implements _$$OrderItemModelImplCopyWith<$Res> {
  __$$OrderItemModelImplCopyWithImpl(
      _$OrderItemModelImpl _value, $Res Function(_$OrderItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productNameAr = null,
    Object? productNameEn = null,
    Object? productImage = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? variantId = freezed,
    Object? variantTypeName = freezed,
    Object? variantValue = freezed,
    Object? variantColorHex = freezed,
  }) {
    return _then(_$OrderItemModelImpl(
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
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantTypeName: freezed == variantTypeName
          ? _value.variantTypeName
          : variantTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantValue: freezed == variantValue
          ? _value.variantValue
          : variantValue // ignore: cast_nullable_to_non_nullable
              as String?,
      variantColorHex: freezed == variantColorHex
          ? _value.variantColorHex
          : variantColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemModelImpl implements _OrderItemModel {
  const _$OrderItemModelImpl(
      {required this.id,
      required this.productId,
      required this.productNameAr,
      required this.productNameEn,
      required this.productImage,
      required this.quantity,
      required this.unitPrice,
      required this.totalPrice,
      this.variantId,
      this.variantTypeName,
      this.variantValue,
      this.variantColorHex});

  factory _$OrderItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemModelImplFromJson(json);

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
  final int quantity;
  @override
  final double unitPrice;
  @override
  final double totalPrice;
  @override
  final int? variantId;
  @override
  final String? variantTypeName;
  @override
  final String? variantValue;
  @override
  final String? variantColorHex;

  @override
  String toString() {
    return 'OrderItemModel(id: $id, productId: $productId, productNameAr: $productNameAr, productNameEn: $productNameEn, productImage: $productImage, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice, variantId: $variantId, variantTypeName: $variantTypeName, variantValue: $variantValue, variantColorHex: $variantColorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productNameAr, productNameAr) ||
                other.productNameAr == productNameAr) &&
            (identical(other.productNameEn, productNameEn) ||
                other.productNameEn == productNameEn) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantTypeName, variantTypeName) ||
                other.variantTypeName == variantTypeName) &&
            (identical(other.variantValue, variantValue) ||
                other.variantValue == variantValue) &&
            (identical(other.variantColorHex, variantColorHex) ||
                other.variantColorHex == variantColorHex));
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
      quantity,
      unitPrice,
      totalPrice,
      variantId,
      variantTypeName,
      variantValue,
      variantColorHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      __$$OrderItemModelImplCopyWithImpl<_$OrderItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemModelImplToJson(
      this,
    );
  }
}

abstract class _OrderItemModel implements OrderItemModel {
  const factory _OrderItemModel(
      {required final int id,
      required final int productId,
      required final String productNameAr,
      required final String productNameEn,
      required final String productImage,
      required final int quantity,
      required final double unitPrice,
      required final double totalPrice,
      final int? variantId,
      final String? variantTypeName,
      final String? variantValue,
      final String? variantColorHex}) = _$OrderItemModelImpl;

  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderItemModelImpl.fromJson;

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
  int get quantity;
  @override
  double get unitPrice;
  @override
  double get totalPrice;
  @override
  int? get variantId;
  @override
  String? get variantTypeName;
  @override
  String? get variantValue;
  @override
  String? get variantColorHex;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
