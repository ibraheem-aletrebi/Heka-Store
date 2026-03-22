// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() recommendedNextPageFetched,
    required TResult Function() featuredNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? recommendedNextPageFetched,
    TResult? Function()? featuredNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? recommendedNextPageFetched,
    TResult Function()? featuredNextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
    required TResult Function(_FeaturedNextPageFetched value)
        featuredNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult? Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() recommendedNextPageFetched,
    required TResult Function() featuredNextPageFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? recommendedNextPageFetched,
    TResult? Function()? featuredNextPageFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? recommendedNextPageFetched,
    TResult Function()? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
    required TResult Function(_FeaturedNextPageFetched value)
        featuredNextPageFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult? Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$RefreshedImplCopyWith<$Res> {
  factory _$$RefreshedImplCopyWith(
          _$RefreshedImpl value, $Res Function(_$RefreshedImpl) then) =
      __$$RefreshedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$RefreshedImpl>
    implements _$$RefreshedImplCopyWith<$Res> {
  __$$RefreshedImplCopyWithImpl(
      _$RefreshedImpl _value, $Res Function(_$RefreshedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshedImpl implements _Refreshed {
  const _$RefreshedImpl();

  @override
  String toString() {
    return 'HomeEvent.refreshed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() recommendedNextPageFetched,
    required TResult Function() featuredNextPageFetched,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? recommendedNextPageFetched,
    TResult? Function()? featuredNextPageFetched,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? recommendedNextPageFetched,
    TResult Function()? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
    required TResult Function(_FeaturedNextPageFetched value)
        featuredNextPageFetched,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult? Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class _Refreshed implements HomeEvent {
  const factory _Refreshed() = _$RefreshedImpl;
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
    extends _$HomeEventCopyWithImpl<$Res, _$RecommendedNextPageFetchedImpl>
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
    return 'HomeEvent.recommendedNextPageFetched()';
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
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() recommendedNextPageFetched,
    required TResult Function() featuredNextPageFetched,
  }) {
    return recommendedNextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? recommendedNextPageFetched,
    TResult? Function()? featuredNextPageFetched,
  }) {
    return recommendedNextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? recommendedNextPageFetched,
    TResult Function()? featuredNextPageFetched,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
    required TResult Function(_FeaturedNextPageFetched value)
        featuredNextPageFetched,
  }) {
    return recommendedNextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult? Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
  }) {
    return recommendedNextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (recommendedNextPageFetched != null) {
      return recommendedNextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _RecommendedNextPageFetched implements HomeEvent {
  const factory _RecommendedNextPageFetched() =
      _$RecommendedNextPageFetchedImpl;
}

/// @nodoc
abstract class _$$FeaturedNextPageFetchedImplCopyWith<$Res> {
  factory _$$FeaturedNextPageFetchedImplCopyWith(
          _$FeaturedNextPageFetchedImpl value,
          $Res Function(_$FeaturedNextPageFetchedImpl) then) =
      __$$FeaturedNextPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FeaturedNextPageFetchedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$FeaturedNextPageFetchedImpl>
    implements _$$FeaturedNextPageFetchedImplCopyWith<$Res> {
  __$$FeaturedNextPageFetchedImplCopyWithImpl(
      _$FeaturedNextPageFetchedImpl _value,
      $Res Function(_$FeaturedNextPageFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FeaturedNextPageFetchedImpl implements _FeaturedNextPageFetched {
  const _$FeaturedNextPageFetchedImpl();

  @override
  String toString() {
    return 'HomeEvent.featuredNextPageFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedNextPageFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() refreshed,
    required TResult Function() recommendedNextPageFetched,
    required TResult Function() featuredNextPageFetched,
  }) {
    return featuredNextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? refreshed,
    TResult? Function()? recommendedNextPageFetched,
    TResult? Function()? featuredNextPageFetched,
  }) {
    return featuredNextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? refreshed,
    TResult Function()? recommendedNextPageFetched,
    TResult Function()? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (featuredNextPageFetched != null) {
      return featuredNextPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Refreshed value) refreshed,
    required TResult Function(_RecommendedNextPageFetched value)
        recommendedNextPageFetched,
    required TResult Function(_FeaturedNextPageFetched value)
        featuredNextPageFetched,
  }) {
    return featuredNextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Refreshed value)? refreshed,
    TResult? Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult? Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
  }) {
    return featuredNextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Refreshed value)? refreshed,
    TResult Function(_RecommendedNextPageFetched value)?
        recommendedNextPageFetched,
    TResult Function(_FeaturedNextPageFetched value)? featuredNextPageFetched,
    required TResult orElse(),
  }) {
    if (featuredNextPageFetched != null) {
      return featuredNextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _FeaturedNextPageFetched implements HomeEvent {
  const factory _FeaturedNextPageFetched() = _$FeaturedNextPageFetchedImpl;
}

/// @nodoc
mixin _$HomeState {
// ─── Banners ──────────────────────────────────
  List<BannerModel> get banners => throw _privateConstructorUsedError;
  bool get isBannersLoading => throw _privateConstructorUsedError;
  ApiErrorModel? get bannersError =>
      throw _privateConstructorUsedError; // ─── Categories ───────────────────────────────
  List<CategoryModel> get categories => throw _privateConstructorUsedError;
  bool get isCategoriesLoading => throw _privateConstructorUsedError;
  ApiErrorModel? get categoriesError =>
      throw _privateConstructorUsedError; // ─── Recommended Products ─────────────────────
  List<ProductModel> get recommendedProducts =>
      throw _privateConstructorUsedError;
  bool get isRecommendedLoading => throw _privateConstructorUsedError;
  bool get isRecommendedLoadingMore => throw _privateConstructorUsedError;
  bool get hasRecommendedNextPage => throw _privateConstructorUsedError;
  int get recommendedCurrentPage => throw _privateConstructorUsedError;
  ApiErrorModel? get recommendedError =>
      throw _privateConstructorUsedError; // ─── Featured Products ────────────────────────
  List<ProductModel> get featuredProducts => throw _privateConstructorUsedError;
  bool get isFeaturedLoading => throw _privateConstructorUsedError;
  bool get isFeaturedLoadingMore => throw _privateConstructorUsedError;
  bool get hasFeaturedNextPage => throw _privateConstructorUsedError;
  int get featuredCurrentPage => throw _privateConstructorUsedError;
  ApiErrorModel? get featuredError =>
      throw _privateConstructorUsedError; // ─── Brands ───────────────────────────────────
  List<BrandModel> get brands => throw _privateConstructorUsedError;
  bool get isBrandsLoading => throw _privateConstructorUsedError;
  ApiErrorModel? get brandsError =>
      throw _privateConstructorUsedError; // ─── General ──────────────────────────────────
  bool get isRefreshing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<BannerModel> banners,
      bool isBannersLoading,
      ApiErrorModel? bannersError,
      List<CategoryModel> categories,
      bool isCategoriesLoading,
      ApiErrorModel? categoriesError,
      List<ProductModel> recommendedProducts,
      bool isRecommendedLoading,
      bool isRecommendedLoadingMore,
      bool hasRecommendedNextPage,
      int recommendedCurrentPage,
      ApiErrorModel? recommendedError,
      List<ProductModel> featuredProducts,
      bool isFeaturedLoading,
      bool isFeaturedLoadingMore,
      bool hasFeaturedNextPage,
      int featuredCurrentPage,
      ApiErrorModel? featuredError,
      List<BrandModel> brands,
      bool isBrandsLoading,
      ApiErrorModel? brandsError,
      bool isRefreshing});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? isBannersLoading = null,
    Object? bannersError = freezed,
    Object? categories = null,
    Object? isCategoriesLoading = null,
    Object? categoriesError = freezed,
    Object? recommendedProducts = null,
    Object? isRecommendedLoading = null,
    Object? isRecommendedLoadingMore = null,
    Object? hasRecommendedNextPage = null,
    Object? recommendedCurrentPage = null,
    Object? recommendedError = freezed,
    Object? featuredProducts = null,
    Object? isFeaturedLoading = null,
    Object? isFeaturedLoadingMore = null,
    Object? hasFeaturedNextPage = null,
    Object? featuredCurrentPage = null,
    Object? featuredError = freezed,
    Object? brands = null,
    Object? isBrandsLoading = null,
    Object? brandsError = freezed,
    Object? isRefreshing = null,
  }) {
    return _then(_value.copyWith(
      banners: null == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      isBannersLoading: null == isBannersLoading
          ? _value.isBannersLoading
          : isBannersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bannersError: freezed == bannersError
          ? _value.bannersError
          : bannersError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoriesError: freezed == categoriesError
          ? _value.categoriesError
          : categoriesError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
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
      featuredProducts: null == featuredProducts
          ? _value.featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isFeaturedLoading: null == isFeaturedLoading
          ? _value.isFeaturedLoading
          : isFeaturedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeaturedLoadingMore: null == isFeaturedLoadingMore
          ? _value.isFeaturedLoadingMore
          : isFeaturedLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFeaturedNextPage: null == hasFeaturedNextPage
          ? _value.hasFeaturedNextPage
          : hasFeaturedNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      featuredCurrentPage: null == featuredCurrentPage
          ? _value.featuredCurrentPage
          : featuredCurrentPage // ignore: cast_nullable_to_non_nullable
              as int,
      featuredError: freezed == featuredError
          ? _value.featuredError
          : featuredError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      brands: null == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      isBrandsLoading: null == isBrandsLoading
          ? _value.isBrandsLoading
          : isBrandsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      brandsError: freezed == brandsError
          ? _value.brandsError
          : brandsError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BannerModel> banners,
      bool isBannersLoading,
      ApiErrorModel? bannersError,
      List<CategoryModel> categories,
      bool isCategoriesLoading,
      ApiErrorModel? categoriesError,
      List<ProductModel> recommendedProducts,
      bool isRecommendedLoading,
      bool isRecommendedLoadingMore,
      bool hasRecommendedNextPage,
      int recommendedCurrentPage,
      ApiErrorModel? recommendedError,
      List<ProductModel> featuredProducts,
      bool isFeaturedLoading,
      bool isFeaturedLoadingMore,
      bool hasFeaturedNextPage,
      int featuredCurrentPage,
      ApiErrorModel? featuredError,
      List<BrandModel> brands,
      bool isBrandsLoading,
      ApiErrorModel? brandsError,
      bool isRefreshing});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = null,
    Object? isBannersLoading = null,
    Object? bannersError = freezed,
    Object? categories = null,
    Object? isCategoriesLoading = null,
    Object? categoriesError = freezed,
    Object? recommendedProducts = null,
    Object? isRecommendedLoading = null,
    Object? isRecommendedLoadingMore = null,
    Object? hasRecommendedNextPage = null,
    Object? recommendedCurrentPage = null,
    Object? recommendedError = freezed,
    Object? featuredProducts = null,
    Object? isFeaturedLoading = null,
    Object? isFeaturedLoadingMore = null,
    Object? hasFeaturedNextPage = null,
    Object? featuredCurrentPage = null,
    Object? featuredError = freezed,
    Object? brands = null,
    Object? isBrandsLoading = null,
    Object? brandsError = freezed,
    Object? isRefreshing = null,
  }) {
    return _then(_$HomeStateImpl(
      banners: null == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>,
      isBannersLoading: null == isBannersLoading
          ? _value.isBannersLoading
          : isBannersLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      bannersError: freezed == bannersError
          ? _value.bannersError
          : bannersError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      isCategoriesLoading: null == isCategoriesLoading
          ? _value.isCategoriesLoading
          : isCategoriesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      categoriesError: freezed == categoriesError
          ? _value.categoriesError
          : categoriesError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
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
      featuredProducts: null == featuredProducts
          ? _value._featuredProducts
          : featuredProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      isFeaturedLoading: null == isFeaturedLoading
          ? _value.isFeaturedLoading
          : isFeaturedLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeaturedLoadingMore: null == isFeaturedLoadingMore
          ? _value.isFeaturedLoadingMore
          : isFeaturedLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFeaturedNextPage: null == hasFeaturedNextPage
          ? _value.hasFeaturedNextPage
          : hasFeaturedNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      featuredCurrentPage: null == featuredCurrentPage
          ? _value.featuredCurrentPage
          : featuredCurrentPage // ignore: cast_nullable_to_non_nullable
              as int,
      featuredError: freezed == featuredError
          ? _value.featuredError
          : featuredError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      brands: null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
      isBrandsLoading: null == isBrandsLoading
          ? _value.isBrandsLoading
          : isBrandsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      brandsError: freezed == brandsError
          ? _value.brandsError
          : brandsError // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {final List<BannerModel> banners = const [],
      this.isBannersLoading = false,
      this.bannersError,
      final List<CategoryModel> categories = const [],
      this.isCategoriesLoading = false,
      this.categoriesError,
      final List<ProductModel> recommendedProducts = const [],
      this.isRecommendedLoading = false,
      this.isRecommendedLoadingMore = false,
      this.hasRecommendedNextPage = false,
      this.recommendedCurrentPage = 1,
      this.recommendedError,
      final List<ProductModel> featuredProducts = const [],
      this.isFeaturedLoading = false,
      this.isFeaturedLoadingMore = false,
      this.hasFeaturedNextPage = false,
      this.featuredCurrentPage = 1,
      this.featuredError,
      final List<BrandModel> brands = const [],
      this.isBrandsLoading = false,
      this.brandsError,
      this.isRefreshing = false})
      : _banners = banners,
        _categories = categories,
        _recommendedProducts = recommendedProducts,
        _featuredProducts = featuredProducts,
        _brands = brands,
        super._();

// ─── Banners ──────────────────────────────────
  final List<BannerModel> _banners;
// ─── Banners ──────────────────────────────────
  @override
  @JsonKey()
  List<BannerModel> get banners {
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_banners);
  }

  @override
  @JsonKey()
  final bool isBannersLoading;
  @override
  final ApiErrorModel? bannersError;
// ─── Categories ───────────────────────────────
  final List<CategoryModel> _categories;
// ─── Categories ───────────────────────────────
  @override
  @JsonKey()
  List<CategoryModel> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool isCategoriesLoading;
  @override
  final ApiErrorModel? categoriesError;
// ─── Recommended Products ─────────────────────
  final List<ProductModel> _recommendedProducts;
// ─── Recommended Products ─────────────────────
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
// ─── Featured Products ────────────────────────
  final List<ProductModel> _featuredProducts;
// ─── Featured Products ────────────────────────
  @override
  @JsonKey()
  List<ProductModel> get featuredProducts {
    if (_featuredProducts is EqualUnmodifiableListView)
      return _featuredProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredProducts);
  }

  @override
  @JsonKey()
  final bool isFeaturedLoading;
  @override
  @JsonKey()
  final bool isFeaturedLoadingMore;
  @override
  @JsonKey()
  final bool hasFeaturedNextPage;
  @override
  @JsonKey()
  final int featuredCurrentPage;
  @override
  final ApiErrorModel? featuredError;
// ─── Brands ───────────────────────────────────
  final List<BrandModel> _brands;
// ─── Brands ───────────────────────────────────
  @override
  @JsonKey()
  List<BrandModel> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  @JsonKey()
  final bool isBrandsLoading;
  @override
  final ApiErrorModel? brandsError;
// ─── General ──────────────────────────────────
  @override
  @JsonKey()
  final bool isRefreshing;

  @override
  String toString() {
    return 'HomeState(banners: $banners, isBannersLoading: $isBannersLoading, bannersError: $bannersError, categories: $categories, isCategoriesLoading: $isCategoriesLoading, categoriesError: $categoriesError, recommendedProducts: $recommendedProducts, isRecommendedLoading: $isRecommendedLoading, isRecommendedLoadingMore: $isRecommendedLoadingMore, hasRecommendedNextPage: $hasRecommendedNextPage, recommendedCurrentPage: $recommendedCurrentPage, recommendedError: $recommendedError, featuredProducts: $featuredProducts, isFeaturedLoading: $isFeaturedLoading, isFeaturedLoadingMore: $isFeaturedLoadingMore, hasFeaturedNextPage: $hasFeaturedNextPage, featuredCurrentPage: $featuredCurrentPage, featuredError: $featuredError, brands: $brands, isBrandsLoading: $isBrandsLoading, brandsError: $brandsError, isRefreshing: $isRefreshing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners) &&
            (identical(other.isBannersLoading, isBannersLoading) ||
                other.isBannersLoading == isBannersLoading) &&
            (identical(other.bannersError, bannersError) ||
                other.bannersError == bannersError) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isCategoriesLoading, isCategoriesLoading) ||
                other.isCategoriesLoading == isCategoriesLoading) &&
            (identical(other.categoriesError, categoriesError) ||
                other.categoriesError == categoriesError) &&
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
            const DeepCollectionEquality()
                .equals(other._featuredProducts, _featuredProducts) &&
            (identical(other.isFeaturedLoading, isFeaturedLoading) ||
                other.isFeaturedLoading == isFeaturedLoading) &&
            (identical(other.isFeaturedLoadingMore, isFeaturedLoadingMore) ||
                other.isFeaturedLoadingMore == isFeaturedLoadingMore) &&
            (identical(other.hasFeaturedNextPage, hasFeaturedNextPage) ||
                other.hasFeaturedNextPage == hasFeaturedNextPage) &&
            (identical(other.featuredCurrentPage, featuredCurrentPage) ||
                other.featuredCurrentPage == featuredCurrentPage) &&
            (identical(other.featuredError, featuredError) ||
                other.featuredError == featuredError) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            (identical(other.isBrandsLoading, isBrandsLoading) ||
                other.isBrandsLoading == isBrandsLoading) &&
            (identical(other.brandsError, brandsError) ||
                other.brandsError == brandsError) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_banners),
        isBannersLoading,
        bannersError,
        const DeepCollectionEquality().hash(_categories),
        isCategoriesLoading,
        categoriesError,
        const DeepCollectionEquality().hash(_recommendedProducts),
        isRecommendedLoading,
        isRecommendedLoadingMore,
        hasRecommendedNextPage,
        recommendedCurrentPage,
        recommendedError,
        const DeepCollectionEquality().hash(_featuredProducts),
        isFeaturedLoading,
        isFeaturedLoadingMore,
        hasFeaturedNextPage,
        featuredCurrentPage,
        featuredError,
        const DeepCollectionEquality().hash(_brands),
        isBrandsLoading,
        brandsError,
        isRefreshing
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final List<BannerModel> banners,
      final bool isBannersLoading,
      final ApiErrorModel? bannersError,
      final List<CategoryModel> categories,
      final bool isCategoriesLoading,
      final ApiErrorModel? categoriesError,
      final List<ProductModel> recommendedProducts,
      final bool isRecommendedLoading,
      final bool isRecommendedLoadingMore,
      final bool hasRecommendedNextPage,
      final int recommendedCurrentPage,
      final ApiErrorModel? recommendedError,
      final List<ProductModel> featuredProducts,
      final bool isFeaturedLoading,
      final bool isFeaturedLoadingMore,
      final bool hasFeaturedNextPage,
      final int featuredCurrentPage,
      final ApiErrorModel? featuredError,
      final List<BrandModel> brands,
      final bool isBrandsLoading,
      final ApiErrorModel? brandsError,
      final bool isRefreshing}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override // ─── Banners ──────────────────────────────────
  List<BannerModel> get banners;
  @override
  bool get isBannersLoading;
  @override
  ApiErrorModel? get bannersError;
  @override // ─── Categories ───────────────────────────────
  List<CategoryModel> get categories;
  @override
  bool get isCategoriesLoading;
  @override
  ApiErrorModel? get categoriesError;
  @override // ─── Recommended Products ─────────────────────
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
  @override // ─── Featured Products ────────────────────────
  List<ProductModel> get featuredProducts;
  @override
  bool get isFeaturedLoading;
  @override
  bool get isFeaturedLoadingMore;
  @override
  bool get hasFeaturedNextPage;
  @override
  int get featuredCurrentPage;
  @override
  ApiErrorModel? get featuredError;
  @override // ─── Brands ───────────────────────────────────
  List<BrandModel> get brands;
  @override
  bool get isBrandsLoading;
  @override
  ApiErrorModel? get brandsError;
  @override // ─── General ──────────────────────────────────
  bool get isRefreshing;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
