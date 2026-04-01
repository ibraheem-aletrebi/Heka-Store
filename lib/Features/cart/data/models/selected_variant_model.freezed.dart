// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_variant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedVariantModel _$SelectedVariantModelFromJson(Map<String, dynamic> json) {
  return _SelectedVariantModel.fromJson(json);
}

/// @nodoc
mixin _$SelectedVariantModel {
  int get variantId => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get colorHex => throw _privateConstructorUsedError;
  double get priceAdjustment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedVariantModelCopyWith<SelectedVariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedVariantModelCopyWith<$Res> {
  factory $SelectedVariantModelCopyWith(SelectedVariantModel value,
          $Res Function(SelectedVariantModel) then) =
      _$SelectedVariantModelCopyWithImpl<$Res, SelectedVariantModel>;
  @useResult
  $Res call(
      {int variantId,
      String typeName,
      String value,
      String colorHex,
      double priceAdjustment});
}

/// @nodoc
class _$SelectedVariantModelCopyWithImpl<$Res,
        $Val extends SelectedVariantModel>
    implements $SelectedVariantModelCopyWith<$Res> {
  _$SelectedVariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = null,
    Object? typeName = null,
    Object? value = null,
    Object? colorHex = null,
    Object? priceAdjustment = null,
  }) {
    return _then(_value.copyWith(
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedVariantModelImplCopyWith<$Res>
    implements $SelectedVariantModelCopyWith<$Res> {
  factory _$$SelectedVariantModelImplCopyWith(_$SelectedVariantModelImpl value,
          $Res Function(_$SelectedVariantModelImpl) then) =
      __$$SelectedVariantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int variantId,
      String typeName,
      String value,
      String colorHex,
      double priceAdjustment});
}

/// @nodoc
class __$$SelectedVariantModelImplCopyWithImpl<$Res>
    extends _$SelectedVariantModelCopyWithImpl<$Res, _$SelectedVariantModelImpl>
    implements _$$SelectedVariantModelImplCopyWith<$Res> {
  __$$SelectedVariantModelImplCopyWithImpl(_$SelectedVariantModelImpl _value,
      $Res Function(_$SelectedVariantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variantId = null,
    Object? typeName = null,
    Object? value = null,
    Object? colorHex = null,
    Object? priceAdjustment = null,
  }) {
    return _then(_$SelectedVariantModelImpl(
      variantId: null == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedVariantModelImpl implements _SelectedVariantModel {
  const _$SelectedVariantModelImpl(
      {required this.variantId,
      required this.typeName,
      required this.value,
      required this.colorHex,
      required this.priceAdjustment});

  factory _$SelectedVariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedVariantModelImplFromJson(json);

  @override
  final int variantId;
  @override
  final String typeName;
  @override
  final String value;
  @override
  final String colorHex;
  @override
  final double priceAdjustment;

  @override
  String toString() {
    return 'SelectedVariantModel(variantId: $variantId, typeName: $typeName, value: $value, colorHex: $colorHex, priceAdjustment: $priceAdjustment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedVariantModelImpl &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.priceAdjustment, priceAdjustment) ||
                other.priceAdjustment == priceAdjustment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, variantId, typeName, value, colorHex, priceAdjustment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedVariantModelImplCopyWith<_$SelectedVariantModelImpl>
      get copyWith =>
          __$$SelectedVariantModelImplCopyWithImpl<_$SelectedVariantModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedVariantModelImplToJson(
      this,
    );
  }
}

abstract class _SelectedVariantModel implements SelectedVariantModel {
  const factory _SelectedVariantModel(
      {required final int variantId,
      required final String typeName,
      required final String value,
      required final String colorHex,
      required final double priceAdjustment}) = _$SelectedVariantModelImpl;

  factory _SelectedVariantModel.fromJson(Map<String, dynamic> json) =
      _$SelectedVariantModelImpl.fromJson;

  @override
  int get variantId;
  @override
  String get typeName;
  @override
  String get value;
  @override
  String get colorHex;
  @override
  double get priceAdjustment;
  @override
  @JsonKey(ignore: true)
  _$$SelectedVariantModelImplCopyWith<_$SelectedVariantModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
