// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_variant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductVariantModel _$ProductVariantModelFromJson(Map<String, dynamic> json) {
  return _ProductVariantModel.fromJson(json);
}

/// @nodoc
mixin _$ProductVariantModel {
  @HiveField(0)
  String get typeName => throw _privateConstructorUsedError;
  @HiveField(1)
  List<ProductVariantOptionModel> get options =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductVariantModelCopyWith<ProductVariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductVariantModelCopyWith<$Res> {
  factory $ProductVariantModelCopyWith(
          ProductVariantModel value, $Res Function(ProductVariantModel) then) =
      _$ProductVariantModelCopyWithImpl<$Res, ProductVariantModel>;
  @useResult
  $Res call(
      {@HiveField(0) String typeName,
      @HiveField(1) List<ProductVariantOptionModel> options});
}

/// @nodoc
class _$ProductVariantModelCopyWithImpl<$Res, $Val extends ProductVariantModel>
    implements $ProductVariantModelCopyWith<$Res> {
  _$ProductVariantModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantOptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductVariantModelImplCopyWith<$Res>
    implements $ProductVariantModelCopyWith<$Res> {
  factory _$$ProductVariantModelImplCopyWith(_$ProductVariantModelImpl value,
          $Res Function(_$ProductVariantModelImpl) then) =
      __$$ProductVariantModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String typeName,
      @HiveField(1) List<ProductVariantOptionModel> options});
}

/// @nodoc
class __$$ProductVariantModelImplCopyWithImpl<$Res>
    extends _$ProductVariantModelCopyWithImpl<$Res, _$ProductVariantModelImpl>
    implements _$$ProductVariantModelImplCopyWith<$Res> {
  __$$ProductVariantModelImplCopyWithImpl(_$ProductVariantModelImpl _value,
      $Res Function(_$ProductVariantModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? options = null,
  }) {
    return _then(_$ProductVariantModelImpl(
      typeName: null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<ProductVariantOptionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductVariantModelImpl implements _ProductVariantModel {
  const _$ProductVariantModelImpl(
      {@HiveField(0) required this.typeName,
      @HiveField(1) required final List<ProductVariantOptionModel> options})
      : _options = options;

  factory _$ProductVariantModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductVariantModelImplFromJson(json);

  @override
  @HiveField(0)
  final String typeName;
  final List<ProductVariantOptionModel> _options;
  @override
  @HiveField(1)
  List<ProductVariantOptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'ProductVariantModel(typeName: $typeName, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductVariantModelImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, typeName, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductVariantModelImplCopyWith<_$ProductVariantModelImpl> get copyWith =>
      __$$ProductVariantModelImplCopyWithImpl<_$ProductVariantModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductVariantModelImplToJson(
      this,
    );
  }
}

abstract class _ProductVariantModel implements ProductVariantModel {
  const factory _ProductVariantModel(
          {@HiveField(0) required final String typeName,
          @HiveField(1)
          required final List<ProductVariantOptionModel> options}) =
      _$ProductVariantModelImpl;

  factory _ProductVariantModel.fromJson(Map<String, dynamic> json) =
      _$ProductVariantModelImpl.fromJson;

  @override
  @HiveField(0)
  String get typeName;
  @override
  @HiveField(1)
  List<ProductVariantOptionModel> get options;
  @override
  @JsonKey(ignore: true)
  _$$ProductVariantModelImplCopyWith<_$ProductVariantModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
