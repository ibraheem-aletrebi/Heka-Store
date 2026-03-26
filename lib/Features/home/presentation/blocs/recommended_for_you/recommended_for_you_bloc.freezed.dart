// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recommended_for_you_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecommendedForYouEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function() recommendedNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function()? recommendedNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function()? recommendedNextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reLoaded,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reLoaded,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reLoaded,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedForYouEventCopyWith<$Res> {
  factory $RecommendedForYouEventCopyWith(RecommendedForYouEvent value,
          $Res Function(RecommendedForYouEvent) then) =
      _$RecommendedForYouEventCopyWithImpl<$Res, RecommendedForYouEvent>;
}

/// @nodoc
class _$RecommendedForYouEventCopyWithImpl<$Res,
        $Val extends RecommendedForYouEvent>
    implements $RecommendedForYouEventCopyWith<$Res> {
  _$RecommendedForYouEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$RecommendedForYouEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'RecommendedForYouEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function() recommendedNextPageFetched,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function()? recommendedNextPageFetched,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function()? recommendedNextPageFetched,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reLoaded,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reLoaded,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reLoaded,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements RecommendedForYouEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ReloadedImplCopyWith<$Res> {
  factory _$$ReloadedImplCopyWith(
          _$ReloadedImpl value, $Res Function(_$ReloadedImpl) then) =
      __$$ReloadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadedImplCopyWithImpl<$Res>
    extends _$RecommendedForYouEventCopyWithImpl<$Res, _$ReloadedImpl>
    implements _$$ReloadedImplCopyWith<$Res> {
  __$$ReloadedImplCopyWithImpl(
      _$ReloadedImpl _value, $Res Function(_$ReloadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReloadedImpl implements _Reloaded {
  const _$ReloadedImpl();

  @override
  String toString() {
    return 'RecommendedForYouEvent.reLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function() recommendedNextPageFetched,
  }) {
    return reLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function()? recommendedNextPageFetched,
  }) {
    return reLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function()? recommendedNextPageFetched,
    required TResult orElse(),
  }) {
    if (reLoaded != null) {
      return reLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reLoaded,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
  }) {
    return reLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reLoaded,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
  }) {
    return reLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reLoaded,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    required TResult orElse(),
  }) {
    if (reLoaded != null) {
      return reLoaded(this);
    }
    return orElse();
  }
}

abstract class _Reloaded implements RecommendedForYouEvent {
  const factory _Reloaded() = _$ReloadedImpl;
}

/// @nodoc
abstract class _$$RecommendedNextPageFetchedImplCopyWith<$Res> {
  factory _$$RecommendedNextPageFetchedImplCopyWith(
          _$RecommendedNextPageFetchedImpl value,
          $Res Function(_$RecommendedNextPageFetchedImpl) then) =
      __$$RecommendedNextPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecommendedNextPageFetchedImplCopyWithImpl<$Res>
    extends _$RecommendedForYouEventCopyWithImpl<$Res,
        _$RecommendedNextPageFetchedImpl>
    implements _$$RecommendedNextPageFetchedImplCopyWith<$Res> {
  __$$RecommendedNextPageFetchedImplCopyWithImpl(
      _$RecommendedNextPageFetchedImpl _value,
      $Res Function(_$RecommendedNextPageFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecommendedNextPageFetchedImpl implements _RecommendedNextPageFetched {
  const _$RecommendedNextPageFetchedImpl();

  @override
  String toString() {
    return 'RecommendedForYouEvent.recommendedNextPageFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedNextPageFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function() recommendedNextPageFetched,
  }) {
    return recommendedNextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function()? recommendedNextPageFetched,
  }) {
    return recommendedNextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function()? recommendedNextPageFetched,
    required TResult orElse(),
  }) {
    if (recommendedNextPageFetched != null) {
      return recommendedNextPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reLoaded,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
  }) {
    return recommendedNextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reLoaded,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
  }) {
    return recommendedNextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reLoaded,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    required TResult orElse(),
  }) {
    if (recommendedNextPageFetched != null) {
      return recommendedNextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _RecommendedNextPageFetched implements RecommendedForYouEvent {
  const factory _RecommendedNextPageFetched() =
      _$RecommendedNextPageFetchedImpl;
}

/// @nodoc
mixin _$RecommendedForYouState {
  List<ProductModel> get recommendedProducts =>
      throw _privateConstructorUsedError;
  bool get isRecommendedLoading => throw _privateConstructorUsedError;
  bool get isRecommendedLoadingMore => throw _privateConstructorUsedError;
  bool get hasRecommendedNextPage => throw _privateConstructorUsedError;
  int get recommendedCurrentPage => throw _privateConstructorUsedError;
  ApiErrorModel? get recommendedError => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendedForYouStateCopyWith<RecommendedForYouState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendedForYouStateCopyWith<$Res> {
  factory $RecommendedForYouStateCopyWith(RecommendedForYouState value,
          $Res Function(RecommendedForYouState) then) =
      _$RecommendedForYouStateCopyWithImpl<$Res, RecommendedForYouState>;
  @useResult
  $Res call(
      {List<ProductModel> recommendedProducts,
      bool isRecommendedLoading,
      bool isRecommendedLoadingMore,
      bool hasRecommendedNextPage,
      int recommendedCurrentPage,
      ApiErrorModel? recommendedError,
      bool isRefreshing});
}

/// @nodoc
class _$RecommendedForYouStateCopyWithImpl<$Res,
        $Val extends RecommendedForYouState>
    implements $RecommendedForYouStateCopyWith<$Res> {
  _$RecommendedForYouStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedProducts = null,
    Object? isRecommendedLoading = null,
    Object? isRecommendedLoadingMore = null,
    Object? hasRecommendedNextPage = null,
    Object? recommendedCurrentPage = null,
    Object? recommendedError = freezed,
    Object? isRefreshing = null,
  }) {
    return _then(_value.copyWith(
      recommendedProducts: null == recommendedProducts
          ? _value.recommendedProducts
          : recommendedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isRecommendedLoading: null == isRecommendedLoading
          ? _value.isRecommendedLoading
          : isRecommendedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommendedLoadingMore: null == isRecommendedLoadingMore
          ? _value.isRecommendedLoadingMore
          : isRecommendedLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRecommendedNextPage: null == hasRecommendedNextPage
          ? _value.hasRecommendedNextPage
          : hasRecommendedNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      recommendedCurrentPage: null == recommendedCurrentPage
          ? _value.recommendedCurrentPage
          : recommendedCurrentPage // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedError: freezed == recommendedError
          ? _value.recommendedError
          : recommendedError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecommendedForYouStateImplCopyWith<$Res>
    implements $RecommendedForYouStateCopyWith<$Res> {
  factory _$$RecommendedForYouStateImplCopyWith(
          _$RecommendedForYouStateImpl value,
          $Res Function(_$RecommendedForYouStateImpl) then) =
      __$$RecommendedForYouStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> recommendedProducts,
      bool isRecommendedLoading,
      bool isRecommendedLoadingMore,
      bool hasRecommendedNextPage,
      int recommendedCurrentPage,
      ApiErrorModel? recommendedError,
      bool isRefreshing});
}

/// @nodoc
class __$$RecommendedForYouStateImplCopyWithImpl<$Res>
    extends _$RecommendedForYouStateCopyWithImpl<$Res,
        _$RecommendedForYouStateImpl>
    implements _$$RecommendedForYouStateImplCopyWith<$Res> {
  __$$RecommendedForYouStateImplCopyWithImpl(
      _$RecommendedForYouStateImpl _value,
      $Res Function(_$RecommendedForYouStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recommendedProducts = null,
    Object? isRecommendedLoading = null,
    Object? isRecommendedLoadingMore = null,
    Object? hasRecommendedNextPage = null,
    Object? recommendedCurrentPage = null,
    Object? recommendedError = freezed,
    Object? isRefreshing = null,
  }) {
    return _then(_$RecommendedForYouStateImpl(
      recommendedProducts: null == recommendedProducts
          ? _value._recommendedProducts
          : recommendedProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isRecommendedLoading: null == isRecommendedLoading
          ? _value.isRecommendedLoading
          : isRecommendedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRecommendedLoadingMore: null == isRecommendedLoadingMore
          ? _value.isRecommendedLoadingMore
          : isRecommendedLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasRecommendedNextPage: null == hasRecommendedNextPage
          ? _value.hasRecommendedNextPage
          : hasRecommendedNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      recommendedCurrentPage: null == recommendedCurrentPage
          ? _value.recommendedCurrentPage
          : recommendedCurrentPage // ignore: cast_nullable_to_non_nullable
              as int,
      recommendedError: freezed == recommendedError
          ? _value.recommendedError
          : recommendedError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecommendedForYouStateImpl extends _RecommendedForYouState {
  const _$RecommendedForYouStateImpl(
      {final List<ProductModel> recommendedProducts = const [],
      this.isRecommendedLoading = false,
      this.isRecommendedLoadingMore = false,
      this.hasRecommendedNextPage = false,
      this.recommendedCurrentPage = 1,
      this.recommendedError,
      this.isRefreshing = false})
      : _recommendedProducts = recommendedProducts,
        super._();

  final List<ProductModel> _recommendedProducts;
  @override
  @JsonKey()
  List<ProductModel> get recommendedProducts {
    if (_recommendedProducts is EqualUnmodifiableListView)
      return _recommendedProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recommendedProducts);
  }

  @override
  @JsonKey()
  final bool isRecommendedLoading;
  @override
  @JsonKey()
  final bool isRecommendedLoadingMore;
  @override
  @JsonKey()
  final bool hasRecommendedNextPage;
  @override
  @JsonKey()
  final int recommendedCurrentPage;
  @override
  final ApiErrorModel? recommendedError;
  @override
  @JsonKey()
  final bool isRefreshing;

  @override
  String toString() {
    return 'RecommendedForYouState(recommendedProducts: $recommendedProducts, isRecommendedLoading: $isRecommendedLoading, isRecommendedLoadingMore: $isRecommendedLoadingMore, hasRecommendedNextPage: $hasRecommendedNextPage, recommendedCurrentPage: $recommendedCurrentPage, recommendedError: $recommendedError, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecommendedForYouStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recommendedProducts, _recommendedProducts) &&
            (identical(other.isRecommendedLoading, isRecommendedLoading) ||
                other.isRecommendedLoading == isRecommendedLoading) &&
            (identical(
                    other.isRecommendedLoadingMore, isRecommendedLoadingMore) ||
                other.isRecommendedLoadingMore == isRecommendedLoadingMore) &&
            (identical(other.hasRecommendedNextPage, hasRecommendedNextPage) ||
                other.hasRecommendedNextPage == hasRecommendedNextPage) &&
            (identical(other.recommendedCurrentPage, recommendedCurrentPage) ||
                other.recommendedCurrentPage == recommendedCurrentPage) &&
            (identical(other.recommendedError, recommendedError) ||
                other.recommendedError == recommendedError) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recommendedProducts),
      isRecommendedLoading,
      isRecommendedLoadingMore,
      hasRecommendedNextPage,
      recommendedCurrentPage,
      recommendedError,
      isRefreshing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecommendedForYouStateImplCopyWith<_$RecommendedForYouStateImpl>
      get copyWith => __$$RecommendedForYouStateImplCopyWithImpl<
          _$RecommendedForYouStateImpl>(this, _$identity);
}

abstract class _RecommendedForYouState extends RecommendedForYouState {
  const factory _RecommendedForYouState(
      {final List<ProductModel> recommendedProducts,
      final bool isRecommendedLoading,
      final bool isRecommendedLoadingMore,
      final bool hasRecommendedNextPage,
      final int recommendedCurrentPage,
      final ApiErrorModel? recommendedError,
      final bool isRefreshing}) = _$RecommendedForYouStateImpl;
  const _RecommendedForYouState._() : super._();

  @override
  List<ProductModel> get recommendedProducts;
  @override
  bool get isRecommendedLoading;
  @override
  bool get isRecommendedLoadingMore;
  @override
  bool get hasRecommendedNextPage;
  @override
  int get recommendedCurrentPage;
  @override
  ApiErrorModel? get recommendedError;
  @override
  bool get isRefreshing;
  @override
  @JsonKey(ignore: true)
  _$$RecommendedForYouStateImplCopyWith<_$RecommendedForYouStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
