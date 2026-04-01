part of 'cart_bloc.dart';

enum CartStatus { initial, loading, loaded, error }

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(CartStatus.initial) CartStatus status,
    CartModel? cart,
    @Default(0) int count,
    @Default({}) Map<int, bool> loadingItems,
    @Default(false) bool isAddingToCart,
    bool? addedToCartSuccess,
    ApiErrorModel? error,
  }) = _CartState;

  const CartState._();

  bool get isLoading => status == CartStatus.loading;
  bool get isLoaded => status == CartStatus.loaded;
  bool get hasError => error != null;
  bool isItemLoading(int cartItemId) => loadingItems[cartItemId] ?? false;
}
