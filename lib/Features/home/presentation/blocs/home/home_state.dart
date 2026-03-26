
part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    // ─── Banners ──────────────────────────────────
    @Default([]) List<BannerModel> banners,
    @Default(false) bool isBannersLoading,
    ApiErrorModel? bannersError,

    // ─── Categories ───────────────────────────────
    @Default([]) List<CategoryModel> categories,
    @Default(false) bool isCategoriesLoading,
    ApiErrorModel? categoriesError,


    // ─── Featured Products ────────────────────────
    @Default([]) List<ProductModel> featuredProducts,
    @Default(false) bool isFeaturedLoading,
    @Default(false) bool isFeaturedLoadingMore,
    @Default(false) bool hasFeaturedNextPage,
    @Default(1) int featuredCurrentPage,
    ApiErrorModel? featuredError,

    // ─── Brands ───────────────────────────────────
    @Default([]) List<BrandModel> brands,
    @Default(false) bool isBrandsLoading,
    ApiErrorModel? brandsError,

    // ─── General ──────────────────────────────────
    @Default(false) bool isRefreshing,
  }) = _HomeState;

  const HomeState._();

  bool get isInitialLoading =>
      isBannersLoading ||
      isCategoriesLoading ||
      isFeaturedLoading ||
      isBrandsLoading;

  bool get hasError =>
      bannersError != null ||
      categoriesError != null ||
      featuredError != null ||
      brandsError != null;
}