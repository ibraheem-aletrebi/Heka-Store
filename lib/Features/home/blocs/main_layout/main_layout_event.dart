part of 'main_layout_bloc.dart';

@freezed
class MainLayoutEvent with _$MainLayoutEvent {
  const factory MainLayoutEvent.changePage(int index) = ChangePage;
  const factory MainLayoutEvent.updateCartCount(int count) = UpdateCartCount;
  const factory MainLayoutEvent.incrementCart() = IncrementCart;
  const factory MainLayoutEvent.decrementCart() = DecrementCart;
  const factory MainLayoutEvent.clearCart() = ClearCart;
}