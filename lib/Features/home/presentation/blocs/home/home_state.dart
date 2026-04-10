
part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    // ─── Banners ──────────────────────────────────
    @Default([]) List<BannerModel> banners,
    @Default(false) bool isBannersLoading,
    ApiErrorModel? bannersError,

   

    // ─── Featured Products ────────────────────────
    @Default([]) List<ProductModel> featuredProducts,
    @Default(false) bool isFeaturedLoading,
    @Default(false) bool isFeaturedLoadingMore,
    @Default(false) bool hasFeaturedNextPage,
    @Default(1) int featuredCurrentPage,
    ApiErrorModel? featuredError,

    // ─── General ──────────────────────────────────
    @Default(false) bool isRefreshing,
  }) = _HomeState;

  const HomeState._();

  bool get isInitialLoading =>
      isBannersLoading ||
      isFeaturedLoading ;
  bool get hasError =>
      bannersError != null ||
      featuredError != null;
}