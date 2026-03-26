part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(CartStatus.initial) CartStatus status,
    CartModel? cart,
    @Default(0) int count,
    @Default({}) Map<int, bool> loadingItems, 
    ApiErrorModel? error,
  }) = _CartState;

  const CartState._();

  bool get isLoading => status == CartStatus.loading;
  bool isItemLoading(int cartItemId) => loadingItems[cartItemId] ?? false;
}

enum CartStatus { initial, loading, loaded, error }