// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsEventCopyWith<$Res> {
  factory $ProductDetailsEventCopyWith(
          ProductDetailsEvent value, $Res Function(ProductDetailsEvent) then) =
      _$ProductDetailsEventCopyWithImpl<$Res, ProductDetailsEvent>;
}

/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res, $Val extends ProductDetailsEvent>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$StartedImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'ProductDetailsEvent.started(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) {
    return started(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) {
    return started?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductDetailsEvent {
  const factory _Started(final int productId) = _$StartedImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'ProductDetailsEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements ProductDetailsEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$VariantOptionSelectedImplCopyWith<$Res> {
  factory _$$VariantOptionSelectedImplCopyWith(
          _$VariantOptionSelectedImpl value,
          $Res Function(_$VariantOptionSelectedImpl) then) =
      __$$VariantOptionSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String typeName, ProductVariantOptionModel option});

  $ProductVariantOptionModelCopyWith<$Res> get option;
}

/// @nodoc
class __$$VariantOptionSelectedImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$VariantOptionSelectedImpl>
    implements _$$VariantOptionSelectedImplCopyWith<$Res> {
  __$$VariantOptionSelectedImplCopyWithImpl(_$VariantOptionSelectedImpl _value,
      $Res Function(_$VariantOptionSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeName = null,
    Object? option = null,
  }) {
    return _then(_$VariantOptionSelectedImpl(
      null == typeName
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as ProductVariantOptionModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductVariantOptionModelCopyWith<$Res> get option {
    return $ProductVariantOptionModelCopyWith<$Res>(_value.option, (value) {
      return _then(_value.copyWith(option: value));
    });
  }
}

/// @nodoc

class _$VariantOptionSelectedImpl implements _VariantOptionSelected {
  const _$VariantOptionSelectedImpl(this.typeName, this.option);

  @override
  final String typeName;
  @override
  final ProductVariantOptionModel option;

  @override
  String toString() {
    return 'ProductDetailsEvent.variantOptionSelected(typeName: $typeName, option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantOptionSelectedImpl &&
            (identical(other.typeName, typeName) ||
                other.typeName == typeName) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeName, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantOptionSelectedImplCopyWith<_$VariantOptionSelectedImpl>
      get copyWith => __$$VariantOptionSelectedImplCopyWithImpl<
          _$VariantOptionSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) {
    return variantOptionSelected(typeName, option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) {
    return variantOptionSelected?.call(typeName, option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (variantOptionSelected != null) {
      return variantOptionSelected(typeName, option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) {
    return variantOptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) {
    return variantOptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (variantOptionSelected != null) {
      return variantOptionSelected(this);
    }
    return orElse();
  }
}

abstract class _VariantOptionSelected implements ProductDetailsEvent {
  const factory _VariantOptionSelected(
          final String typeName, final ProductVariantOptionModel option) =
      _$VariantOptionSelectedImpl;

  String get typeName;
  ProductVariantOptionModel get option;
  @JsonKey(ignore: true)
  _$$VariantOptionSelectedImplCopyWith<_$VariantOptionSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuantityIncrementedImplCopyWith<$Res> {
  factory _$$QuantityIncrementedImplCopyWith(_$QuantityIncrementedImpl value,
          $Res Function(_$QuantityIncrementedImpl) then) =
      __$$QuantityIncrementedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuantityIncrementedImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$QuantityIncrementedImpl>
    implements _$$QuantityIncrementedImplCopyWith<$Res> {
  __$$QuantityIncrementedImplCopyWithImpl(_$QuantityIncrementedImpl _value,
      $Res Function(_$QuantityIncrementedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuantityIncrementedImpl implements _QuantityIncremented {
  const _$QuantityIncrementedImpl();

  @override
  String toString() {
    return 'ProductDetailsEvent.quantityIncremented()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityIncrementedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) {
    return quantityIncremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) {
    return quantityIncremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (quantityIncremented != null) {
      return quantityIncremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) {
    return quantityIncremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) {
    return quantityIncremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (quantityIncremented != null) {
      return quantityIncremented(this);
    }
    return orElse();
  }
}

abstract class _QuantityIncremented implements ProductDetailsEvent {
  const factory _QuantityIncremented() = _$QuantityIncrementedImpl;
}

/// @nodoc
abstract class _$$QuantityDecrementedImplCopyWith<$Res> {
  factory _$$QuantityDecrementedImplCopyWith(_$QuantityDecrementedImpl value,
          $Res Function(_$QuantityDecrementedImpl) then) =
      __$$QuantityDecrementedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuantityDecrementedImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$QuantityDecrementedImpl>
    implements _$$QuantityDecrementedImplCopyWith<$Res> {
  __$$QuantityDecrementedImplCopyWithImpl(_$QuantityDecrementedImpl _value,
      $Res Function(_$QuantityDecrementedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuantityDecrementedImpl implements _QuantityDecremented {
  const _$QuantityDecrementedImpl();

  @override
  String toString() {
    return 'ProductDetailsEvent.quantityDecremented()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityDecrementedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) {
    return quantityDecremented();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) {
    return quantityDecremented?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (quantityDecremented != null) {
      return quantityDecremented();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) {
    return quantityDecremented(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) {
    return quantityDecremented?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (quantityDecremented != null) {
      return quantityDecremented(this);
    }
    return orElse();
  }
}

abstract class _QuantityDecremented implements ProductDetailsEvent {
  const factory _QuantityDecremented() = _$QuantityDecrementedImpl;
}

/// @nodoc
abstract class _$$ImagePageChangedImplCopyWith<$Res> {
  factory _$$ImagePageChangedImplCopyWith(_$ImagePageChangedImpl value,
          $Res Function(_$ImagePageChangedImpl) then) =
      __$$ImagePageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ImagePageChangedImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$ImagePageChangedImpl>
    implements _$$ImagePageChangedImplCopyWith<$Res> {
  __$$ImagePageChangedImplCopyWithImpl(_$ImagePageChangedImpl _value,
      $Res Function(_$ImagePageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ImagePageChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ImagePageChangedImpl implements _ImagePageChanged {
  const _$ImagePageChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ProductDetailsEvent.imagePageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagePageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagePageChangedImplCopyWith<_$ImagePageChangedImpl> get copyWith =>
      __$$ImagePageChangedImplCopyWithImpl<_$ImagePageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int productId) started,
    required TResult Function() reset,
    required TResult Function(String typeName, ProductVariantOptionModel option)
        variantOptionSelected,
    required TResult Function() quantityIncremented,
    required TResult Function() quantityDecremented,
    required TResult Function(int index) imagePageChanged,
  }) {
    return imagePageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int productId)? started,
    TResult? Function()? reset,
    TResult? Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult? Function()? quantityIncremented,
    TResult? Function()? quantityDecremented,
    TResult? Function(int index)? imagePageChanged,
  }) {
    return imagePageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int productId)? started,
    TResult Function()? reset,
    TResult Function(String typeName, ProductVariantOptionModel option)?
        variantOptionSelected,
    TResult Function()? quantityIncremented,
    TResult Function()? quantityDecremented,
    TResult Function(int index)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (imagePageChanged != null) {
      return imagePageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Reset value) reset,
    required TResult Function(_VariantOptionSelected value)
        variantOptionSelected,
    required TResult Function(_QuantityIncremented value) quantityIncremented,
    required TResult Function(_QuantityDecremented value) quantityDecremented,
    required TResult Function(_ImagePageChanged value) imagePageChanged,
  }) {
    return imagePageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult? Function(_QuantityIncremented value)? quantityIncremented,
    TResult? Function(_QuantityDecremented value)? quantityDecremented,
    TResult? Function(_ImagePageChanged value)? imagePageChanged,
  }) {
    return imagePageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Reset value)? reset,
    TResult Function(_VariantOptionSelected value)? variantOptionSelected,
    TResult Function(_QuantityIncremented value)? quantityIncremented,
    TResult Function(_QuantityDecremented value)? quantityDecremented,
    TResult Function(_ImagePageChanged value)? imagePageChanged,
    required TResult orElse(),
  }) {
    if (imagePageChanged != null) {
      return imagePageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImagePageChanged implements ProductDetailsEvent {
  const factory _ImagePageChanged(final int index) = _$ImagePageChangedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ImagePageChangedImplCopyWith<_$ImagePageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailsState {
  bool get isLoading => throw _privateConstructorUsedError;
  ProductDetailsModel? get product => throw _privateConstructorUsedError;
  Map<String, ProductVariantOptionModel> get selectedOptions =>
      throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get currentImageIndex => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
  @useResult
  $Res call(
      {bool isLoading,
      ProductDetailsModel? product,
      Map<String, ProductVariantOptionModel> selectedOptions,
      int quantity,
      int currentImageIndex,
      ApiErrorModel? error});

  $ProductDetailsModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? product = freezed,
    Object? selectedOptions = null,
    Object? quantity = null,
    Object? currentImageIndex = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailsModel?,
      selectedOptions: null == selectedOptions
          ? _value.selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, ProductVariantOptionModel>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailsModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDetailsModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsStateImplCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$ProductDetailsStateImplCopyWith(_$ProductDetailsStateImpl value,
          $Res Function(_$ProductDetailsStateImpl) then) =
      __$$ProductDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      ProductDetailsModel? product,
      Map<String, ProductVariantOptionModel> selectedOptions,
      int quantity,
      int currentImageIndex,
      ApiErrorModel? error});

  @override
  $ProductDetailsModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ProductDetailsStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsStateImpl>
    implements _$$ProductDetailsStateImplCopyWith<$Res> {
  __$$ProductDetailsStateImplCopyWithImpl(_$ProductDetailsStateImpl _value,
      $Res Function(_$ProductDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? product = freezed,
    Object? selectedOptions = null,
    Object? quantity = null,
    Object? currentImageIndex = null,
    Object? error = freezed,
  }) {
    return _then(_$ProductDetailsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailsModel?,
      selectedOptions: null == selectedOptions
          ? _value._selectedOptions
          : selectedOptions // ignore: cast_nullable_to_non_nullable
              as Map<String, ProductVariantOptionModel>,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      currentImageIndex: null == currentImageIndex
          ? _value.currentImageIndex
          : currentImageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsStateImpl extends _ProductDetailsState {
  const _$ProductDetailsStateImpl(
      {this.isLoading = false,
      this.product,
      final Map<String, ProductVariantOptionModel> selectedOptions = const {},
      this.quantity = 1,
      this.currentImageIndex = 0,
      this.error})
      : _selectedOptions = selectedOptions,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final ProductDetailsModel? product;
  final Map<String, ProductVariantOptionModel> _selectedOptions;
  @override
  @JsonKey()
  Map<String, ProductVariantOptionModel> get selectedOptions {
    if (_selectedOptions is EqualUnmodifiableMapView) return _selectedOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedOptions);
  }

  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final int currentImageIndex;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'ProductDetailsState(isLoading: $isLoading, product: $product, selectedOptions: $selectedOptions, quantity: $quantity, currentImageIndex: $currentImageIndex, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._selectedOptions, _selectedOptions) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.currentImageIndex, currentImageIndex) ||
                other.currentImageIndex == currentImageIndex) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      product,
      const DeepCollectionEquality().hash(_selectedOptions),
      quantity,
      currentImageIndex,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      __$$ProductDetailsStateImplCopyWithImpl<_$ProductDetailsStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailsState extends ProductDetailsState {
  const factory _ProductDetailsState(
      {final bool isLoading,
      final ProductDetailsModel? product,
      final Map<String, ProductVariantOptionModel> selectedOptions,
      final int quantity,
      final int currentImageIndex,
      final ApiErrorModel? error}) = _$ProductDetailsStateImpl;
  const _ProductDetailsState._() : super._();

  @override
  bool get isLoading;
  @override
  ProductDetailsModel? get product;
  @override
  Map<String, ProductVariantOptionModel> get selectedOptions;
  @override
  int get quantity;
  @override
  int get currentImageIndex;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
