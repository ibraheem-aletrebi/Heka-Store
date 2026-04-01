import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/cart/domain/use_cases/add_cart_item_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/clear_cart_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/get_cart_count_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/get_cart_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/remove_cart_item_use_case.dart';
import 'package:heka_store/Features/cart/domain/use_cases/update_cart_item_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCartUseCase _getCart;
  final AddCartItemUseCase _addItem;
  final UpdateCartItemUseCase _updateItem;
  final RemoveCartItemUseCase _removeItem;
  final GetCartCountUseCase _getCount;
  final ClearCartUseCase _clearCart;

  CartBloc({
    required GetCartUseCase getCart,
    required AddCartItemUseCase addItem,
    required UpdateCartItemUseCase updateItem,
    required RemoveCartItemUseCase removeItem,
    required GetCartCountUseCase getCount,
    required ClearCartUseCase clearCart,
  })  : _getCart = getCart,
        _addItem = addItem,
        _updateItem = updateItem,
        _removeItem = removeItem,
        _getCount = getCount,
        _clearCart = clearCart,
        super(const CartState()) {
    on<_Loaded>(_onLoaded);
    on<_ReLoaded>(_onReLoaded);
    on<_ItemAdded>(_onItemAdded);
    on<_ItemUpdated>(_onItemUpdated);
    on<_ItemRemoved>(_onItemRemoved);
    on<_CountFetched>(_onCountFetched);
    on<_Cleared>(_onCleared);
  }

  Future<void> _onLoaded(_Loaded event, Emitter<CartState> emit) async {
    emit(state.copyWith(status: CartStatus.loading, error: null));
    final result = await _getCart();
    result.when(
      onSuccess: (cart) => emit(
        state.copyWith(
          status: CartStatus.loaded,
          cart: cart,
          count: cart.totalItems,
        ),
      ),
      onError: (failure) =>
          emit(state.copyWith(status: CartStatus.error, error: failure)),
    );
  }

  Future<void> _onReLoaded(_ReLoaded event, Emitter<CartState> emit) async {
    final result = await _getCart();
    result.when(
      onSuccess: (cart) => emit(
        state.copyWith(
          status: CartStatus.loaded,
          cart: cart,
          count: cart.totalItems,
        ),
      ),
      onError: (failure) =>
          emit(state.copyWith(status: CartStatus.error, error: failure)),
    );
  }

  Future<void> _onItemAdded(_ItemAdded event, Emitter<CartState> emit) async {
    // reset النتيجة القديمة + ابدأ الـ loading
    emit(state.copyWith(
      isAddingToCart: true,
      addedToCartSuccess: null,
      error: null,
    ));

    final result = await _addItem(
      productId: event.productId,
      quantity: event.quantity,
      selectedVariantIds: event.selectedVariantIds,
    );

    result.when(
      onError: (failure) {
        // ✅ false → الـ listener في app.dart يعرض error snackbar
        emit(state.copyWith(
          isAddingToCart: false,
          addedToCartSuccess: false,
          error: failure,
        ));
      },
      onSuccess: (_) {
        // ✅ true → الـ listener في app.dart يعرض success snackbar
        emit(state.copyWith(
          isAddingToCart: false,
          addedToCartSuccess: true,
          count: state.count + event.quantity,
        ));
        // reLoaded بييجي بعدين — مش بيأثر على الـ listener خالص
        add(const CartEvent.reLoaded());
      },
    );
  }

  Future<void> _onItemUpdated(
    _ItemUpdated event,
    Emitter<CartState> emit,
  ) async {
    final previousCart = state.cart;

    if (state.cart != null) {
      final updatedItems = state.cart!.items.map((item) {
        if (item.id == event.cartItemId) {
          return item.copyWith(
            quantity: event.quantity,
            totalPrice: item.unitPrice * event.quantity,
          );
        }
        return item;
      }).toList();

      emit(
        state.copyWith(
          cart: state.cart!.copyWith(items: updatedItems),
          loadingItems: {...state.loadingItems, event.cartItemId: true},
        ),
      );
    }

    final result = await _updateItem(
      cartItemId: event.cartItemId,
      quantity: event.quantity,
      selectedVariantIds: event.selectedVariantIds,
    );

    result.when(
      onError: (failure) {
        emit(
          state.copyWith(
            cart: previousCart,
            loadingItems: _removeLoadingItem(event.cartItemId),
            error: failure,
          ),
        );
      },
      onSuccess: (_) {
        emit(state.copyWith(loadingItems: _removeLoadingItem(event.cartItemId)));
        add(const CartEvent.reLoaded());
      },
    );
  }

  Future<void> _onItemRemoved(
    _ItemRemoved event,
    Emitter<CartState> emit,
  ) async {
    final result = await _removeItem(cartItemId: event.cartItemId);

    result.when(
      onError: (failure) => emit(
        state.copyWith(
          loadingItems: _removeLoadingItem(event.cartItemId),
          error: failure,
        ),
      ),
      onSuccess: (_) {
        add(const CartEvent.reLoaded());
      },
    );
  }

  Future<void> _onCountFetched(
    _CountFetched event,
    Emitter<CartState> emit,
  ) async {
    final result = await _getCount();
    result.when(
      onError: (_) {},
      onSuccess: (count) => emit(state.copyWith(count: count,)),
    );
  }

  Future<void> _onCleared(_Cleared event, Emitter<CartState> emit) async {
    final result = await _clearCart();
    result.when(
      onError: (failure) => emit(state.copyWith(error: failure)),
      onSuccess: (_) => emit(
        state.copyWith(
          cart: state.cart?.copyWith(items: []),
          count: 0,
          status: CartStatus.loaded,
        ),
      ),
    );
  }

  Map<int, bool> _removeLoadingItem(int cartItemId) {
    final updated = Map<int, bool>.from(state.loadingItems);
    updated.remove(cartItemId);
    return updated;
  }
}