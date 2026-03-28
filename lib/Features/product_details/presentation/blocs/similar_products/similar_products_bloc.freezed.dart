// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'similar_products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimilarProductsEvent {
  int get categoryId => throw _privateConstructorUsedError;
  int get excludeProductId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, int excludeProductId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, int excludeProductId)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, int excludeProductId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimilarProductsEventCopyWith<SimilarProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarProductsEventCopyWith<$Res> {
  factory $SimilarProductsEventCopyWith(SimilarProductsEvent value,
          $Res Function(SimilarProductsEvent) then) =
      _$SimilarProductsEventCopyWithImpl<$Res, SimilarProductsEvent>;
  @useResult
  $Res call({int categoryId, int excludeProductId});
}

/// @nodoc
class _$SimilarProductsEventCopyWithImpl<$Res,
        $Val extends SimilarProductsEvent>
    implements $SimilarProductsEventCopyWith<$Res> {
  _$SimilarProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? excludeProductId = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      excludeProductId: null == excludeProductId
          ? _value.excludeProductId
          : excludeProductId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $SimilarProductsEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId, int excludeProductId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SimilarProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? excludeProductId = null,
  }) {
    return _then(_$StartedImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      excludeProductId: null == excludeProductId
          ? _value.excludeProductId
          : excludeProductId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(
      {required this.categoryId, required this.excludeProductId});

  @override
  final int categoryId;
  @override
  final int excludeProductId;

  @override
  String toString() {
    return 'SimilarProductsEvent.started(categoryId: $categoryId, excludeProductId: $excludeProductId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.excludeProductId, excludeProductId) ||
                other.excludeProductId == excludeProductId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, excludeProductId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, int excludeProductId) started,
  }) {
    return started(categoryId, excludeProductId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, int excludeProductId)? started,
  }) {
    return started?.call(categoryId, excludeProductId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, int excludeProductId)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(categoryId, excludeProductId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SimilarProductsEvent {
  const factory _Started(
      {required final int categoryId,
      required final int excludeProductId}) = _$StartedImpl;

  @override
  int get categoryId;
  @override
  int get excludeProductId;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SimilarProductsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductModel> get products => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SimilarProductsStateCopyWith<SimilarProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarProductsStateCopyWith<$Res> {
  factory $SimilarProductsStateCopyWith(SimilarProductsState value,
          $Res Function(SimilarProductsState) then) =
      _$SimilarProductsStateCopyWithImpl<$Res, SimilarProductsState>;
  @useResult
  $Res call(
      {bool isLoading, List<ProductModel> products, ApiErrorModel? error});
}

/// @nodoc
class _$SimilarProductsStateCopyWithImpl<$Res,
        $Val extends SimilarProductsState>
    implements $SimilarProductsStateCopyWith<$Res> {
  _$SimilarProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarProductsStateImplCopyWith<$Res>
    implements $SimilarProductsStateCopyWith<$Res> {
  factory _$$SimilarProductsStateImplCopyWith(_$SimilarProductsStateImpl value,
          $Res Function(_$SimilarProductsStateImpl) then) =
      __$$SimilarProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, List<ProductModel> products, ApiErrorModel? error});
}

/// @nodoc
class __$$SimilarProductsStateImplCopyWithImpl<$Res>
    extends _$SimilarProductsStateCopyWithImpl<$Res, _$SimilarProductsStateImpl>
    implements _$$SimilarProductsStateImplCopyWith<$Res> {
  __$$SimilarProductsStateImplCopyWithImpl(_$SimilarProductsStateImpl _value,
      $Res Function(_$SimilarProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? products = null,
    Object? error = freezed,
  }) {
    return _then(_$SimilarProductsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$SimilarProductsStateImpl extends _SimilarProductsState {
  const _$SimilarProductsStateImpl(
      {this.isLoading = false,
      final List<ProductModel> products = const [],
      this.error})
      : _products = products,
        super._();

  @override
  @JsonKey()
  final bool isLoading;
  final List<ProductModel> _products;
  @override
  @JsonKey()
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'SimilarProductsState(isLoading: $isLoading, products: $products, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarProductsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_products), error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarProductsStateImplCopyWith<_$SimilarProductsStateImpl>
      get copyWith =>
          __$$SimilarProductsStateImplCopyWithImpl<_$SimilarProductsStateImpl>(
              this, _$identity);
}

abstract class _SimilarProductsState extends SimilarProductsState {
  const factory _SimilarProductsState(
      {final bool isLoading,
      final List<ProductModel> products,
      final ApiErrorModel? error}) = _$SimilarProductsStateImpl;
  const _SimilarProductsState._() : super._();

  @override
  bool get isLoading;
  @override
  List<ProductModel> get products;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$SimilarProductsStateImplCopyWith<_$SimilarProductsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
