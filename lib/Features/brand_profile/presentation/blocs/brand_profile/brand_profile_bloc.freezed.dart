// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandProfileEvent {
  int get brandId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int brandId) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int brandId)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int brandId)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandProfileEventCopyWith<BrandProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProfileEventCopyWith<$Res> {
  factory $BrandProfileEventCopyWith(
          BrandProfileEvent value, $Res Function(BrandProfileEvent) then) =
      _$BrandProfileEventCopyWithImpl<$Res, BrandProfileEvent>;
  @useResult
  $Res call({int brandId});
}

/// @nodoc
class _$BrandProfileEventCopyWithImpl<$Res, $Val extends BrandProfileEvent>
    implements $BrandProfileEventCopyWith<$Res> {
  _$BrandProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
  }) {
    return _then(_value.copyWith(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res>
    implements $BrandProfileEventCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int brandId});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BrandProfileEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
  }) {
    return _then(_$LoadedImpl(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({required this.brandId});

  @override
  final int brandId;

  @override
  String toString() {
    return 'BrandProfileEvent.loaded(brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int brandId) loaded,
  }) {
    return loaded(brandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int brandId)? loaded,
  }) {
    return loaded?.call(brandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int brandId)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(brandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements BrandProfileEvent {
  const factory _Loaded({required final int brandId}) = _$LoadedImpl;

  @override
  int get brandId;
  @override
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandProfileState {
  BrandProfileModel? get brand => throw _privateConstructorUsedError;
  List<BrandProductModel> get products => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isProductsLoading => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BrandProfileStateCopyWith<BrandProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandProfileStateCopyWith<$Res> {
  factory $BrandProfileStateCopyWith(
          BrandProfileState value, $Res Function(BrandProfileState) then) =
      _$BrandProfileStateCopyWithImpl<$Res, BrandProfileState>;
  @useResult
  $Res call(
      {BrandProfileModel? brand,
      List<BrandProductModel> products,
      bool isLoading,
      bool isProductsLoading,
      ApiErrorModel? error});

  $BrandProfileModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$BrandProfileStateCopyWithImpl<$Res, $Val extends BrandProfileState>
    implements $BrandProfileStateCopyWith<$Res> {
  _$BrandProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? products = null,
    Object? isLoading = null,
    Object? isProductsLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandProfileModel?,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BrandProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandProfileModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandProfileModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandProfileStateImplCopyWith<$Res>
    implements $BrandProfileStateCopyWith<$Res> {
  factory _$$BrandProfileStateImplCopyWith(_$BrandProfileStateImpl value,
          $Res Function(_$BrandProfileStateImpl) then) =
      __$$BrandProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BrandProfileModel? brand,
      List<BrandProductModel> products,
      bool isLoading,
      bool isProductsLoading,
      ApiErrorModel? error});

  @override
  $BrandProfileModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$BrandProfileStateImplCopyWithImpl<$Res>
    extends _$BrandProfileStateCopyWithImpl<$Res, _$BrandProfileStateImpl>
    implements _$$BrandProfileStateImplCopyWith<$Res> {
  __$$BrandProfileStateImplCopyWithImpl(_$BrandProfileStateImpl _value,
      $Res Function(_$BrandProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = freezed,
    Object? products = null,
    Object? isLoading = null,
    Object? isProductsLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$BrandProfileStateImpl(
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandProfileModel?,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BrandProductModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isProductsLoading: null == isProductsLoading
          ? _value.isProductsLoading
          : isProductsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$BrandProfileStateImpl implements _BrandProfileState {
  const _$BrandProfileStateImpl(
      {this.brand,
      final List<BrandProductModel> products = const [],
      this.isLoading = false,
      this.isProductsLoading = false,
      this.error})
      : _products = products;

  @override
  final BrandProfileModel? brand;
  final List<BrandProductModel> _products;
  @override
  @JsonKey()
  List<BrandProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isProductsLoading;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'BrandProfileState(brand: $brand, products: $products, isLoading: $isLoading, isProductsLoading: $isProductsLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandProfileStateImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isProductsLoading, isProductsLoading) ||
                other.isProductsLoading == isProductsLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      brand,
      const DeepCollectionEquality().hash(_products),
      isLoading,
      isProductsLoading,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandProfileStateImplCopyWith<_$BrandProfileStateImpl> get copyWith =>
      __$$BrandProfileStateImplCopyWithImpl<_$BrandProfileStateImpl>(
          this, _$identity);
}

abstract class _BrandProfileState implements BrandProfileState {
  const factory _BrandProfileState(
      {final BrandProfileModel? brand,
      final List<BrandProductModel> products,
      final bool isLoading,
      final bool isProductsLoading,
      final ApiErrorModel? error}) = _$BrandProfileStateImpl;

  @override
  BrandProfileModel? get brand;
  @override
  List<BrandProductModel> get products;
  @override
  bool get isLoading;
  @override
  bool get isProductsLoading;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$BrandProfileStateImplCopyWith<_$BrandProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
