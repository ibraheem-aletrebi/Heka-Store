part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    // ─── Authenticated ────────────────────────────
    @Default([]) List<WishlistItemModel> items,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasNextPage,
    @Default(1) int currentPage,
    @Default([]) List<int> loadingProductIds,

    // ─── Shared ───────────────────────────────────
    int? lastToggledProductId,
    ApiErrorModel? error,
  }) = _WishlistState;

  const WishlistState._();

  bool isInWishlist(int productId) =>
      items.any((e) => e.productId == productId);

  bool isItemLoading(int productId) => loadingProductIds.contains(productId);
}
