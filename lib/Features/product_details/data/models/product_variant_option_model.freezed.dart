// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVariantOptionModel _$ProductVariantOptionModelFromJson(
    Map<String, dynamic> json) {
  return _ProductVariantOptionModel.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantOptionModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get typeName => throw _privateConstructorUsedError;
  @HiveField(2)
  String get value => throw _privateConstructorUsedError;
  @HiveField(3)
  String get colorHex => throw _privateConstructorUsedError;
  @HiveField(4)
  double get priceAdjustment => throw _privateConstructorUsedError;
  @HiveField(5)
  int get stockQuantity => throw _privateConstructorUsedError;
  @HiveField(6)
  int get displayOrder => throw _privateConstructorUsedError;
  @HiveField(7)
  bool get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariantOptionModelCopyWith<ProductVariantOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantOptionModelCopyWith<$Res> {
  factory $ProductVariantOptionModelCopyWith(ProductVariantOptionModel value,
          $Res Function(ProductVariantOptionModel) then) =
      _$ProductVariantOptionModelCopyWithImpl<$Res, ProductVariantOptionModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String typeName,
      @HiveField(2) String value,
      @HiveField(3) String colorHex,
      @HiveField(4) double priceAdjustment,
      @HiveField(5) int stockQuantity,
      @HiveField(6) int displayOrder,
      @HiveField(7) bool isActive});
}

/// @nodoc
class _$ProductVariantOptionModelCopyWithImpl<$Res,
        $Val extends ProductVariantOptionModel>
    implements $ProductVariantOptionModelCopyWith<$Res> {
  _$ProductVariantOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? value = null,
    Object? colorHex = null,
    Object? priceAdjustment = null,
    Object? stockQuantity = null,
    Object? displayOrder = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      priceAdjustment: null == priceAdjustment
          ? _value.priceAdjustment
          : priceAdjustment // ignore: cast_nullable_to_non_nullable
              as double,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantOptionModelImplCopyWith<$Res>
    implements $ProductVariantOptionModelCopyWith<$Res> {
  factory _$$ProductVariantOptionModelImplCopyWith(
          _$ProductVariantOptionModelImpl value,
          $Res Function(_$ProductVariantOptionModelImpl) then) =
      __$$ProductVariantOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String typeName,
      @HiveField(2) String value,
      @HiveField(3) String colorHex,
      @HiveField(4) double priceAdjustment,
      @HiveField(5) int stockQuantity,
      @HiveField(6) int displayOrder,
      @HiveField(7) bool isActive});
}

/// @nodoc
class __$$ProductVariantOptionModelImplCopyWithImpl<$Res>
    extends _$ProductVariantOptionModelCopyWithImpl<$Res,
        _$ProductVariantOptionModelImpl>
    implements _$$ProductVariantOptionModelImplCopyWith<$Res> {
  __$$ProductVariantOptionModelImplCopyWithImpl(
      _$ProductVariantOptionModelImpl _value,
      $Res Function(_$ProductVariantOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? typeName = null,
    Object? value = null,
    Object? colorHex = null,
    Object? priceAdjustment = null,
    Object? stockQuantity = null,
    Object? displayOrder = null,
    Object? isActive = null,
  }) {
    return _then(_$ProductVariantOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      colorHex: null == colorHex
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      priceAdjustment: null == priceAdjustment
          ? _value.priceAdjustment
          : priceAdjustment // ignore: cast_nullable_to_non_nullable
              as double,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      displayOrder: null == displayOrder
          ? _value.displayOrder
          : displayOrder // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantOptionModelImpl implements _ProductVariantOptionModel {
  const _$ProductVariantOptionModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.typeName,
      @HiveField(2) required this.value,
      @HiveField(3) required this.colorHex,
      @HiveField(4) required this.priceAdjustment,
      @HiveField(5) required this.stockQuantity,
      @HiveField(6) required this.displayOrder,
      @HiveField(7) required this.isActive});

  factory _$ProductVariantOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantOptionModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String typeName;
  @override
  @HiveField(2)
  final String value;
  @override
  @HiveField(3)
  final String colorHex;
  @override
  @HiveField(4)
  final double priceAdjustment;
  @override
  @HiveField(5)
  final int stockQuantity;
  @override
  @HiveField(6)
  final int displayOrder;
  @override
  @HiveField(7)
  final bool isActive;

  @override
  String toString() {
    return 'ProductVariantOptionModel(id: $id, typeName: $typeName, value: $value, colorHex: $colorHex, priceAdjustment: $priceAdjustment, stockQuantity: $stockQuantity, displayOrder: $displayOrder, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.priceAdjustment, priceAdjustment) ||
                other.priceAdjustment == priceAdjustment) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, typeName, value, colorHex,
      priceAdjustment, stockQuantity, displayOrder, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantOptionModelImplCopyWith<_$ProductVariantOptionModelImpl>
      get copyWith => __$$ProductVariantOptionModelImplCopyWithImpl<
          _$ProductVariantOptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantOptionModelImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantOptionModel implements ProductVariantOptionModel {
  const factory _ProductVariantOptionModel(
          {@HiveField(0) required final int id,
          @HiveField(1) required final String typeName,
          @HiveField(2) required final String value,
          @HiveField(3) required final String colorHex,
          @HiveField(4) required final double priceAdjustment,
          @HiveField(5) required final int stockQuantity,
          @HiveField(6) required final int displayOrder,
          @HiveField(7) required final bool isActive}) =
      _$ProductVariantOptionModelImpl;

  factory _ProductVariantOptionModel.fromJson(Map<String, dynamic> json) =
      _$ProductVariantOptionModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get typeName;
  @override
  @HiveField(2)
  String get value;
  @override
  @HiveField(3)
  String get colorHex;
  @override
  @HiveField(4)
  double get priceAdjustment;
  @override
  @HiveField(5)
  int get stockQuantity;
  @override
  @HiveField(6)
  int get displayOrder;
  @override
  @HiveField(7)
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$ProductVariantOptionModelImplCopyWith<_$ProductVariantOptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
