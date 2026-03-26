import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/cart/presentation/blocs/cart/cart_bloc.dart';

part 'main_layout_event.dart';
part 'main_layout_state.dart';
part 'main_layout_bloc.freezed.dart';

class MainLayoutBloc extends Bloc<MainLayoutEvent, MainLayoutState> {
  MainLayoutBloc({required CartBloc cartBloc})
      : super(const MainLayoutState()) {
    on<ChangePage>(_onChangePage);
    on<UpdateCartCount>(_onUpdateCartCount);
    on<IncrementCart>(_onIncrementCart);
    on<DecrementCart>(_onDecrementCart);
    on<ClearCart>(_onClearCart);

    add(MainLayoutEvent.updateCartCount(cartBloc.state.count));
    _cartSub = cartBloc.stream.listen(
      (cartState) => add(MainLayoutEvent.updateCartCount(cartState.count)),
    );
  }

  final PageController pageController = PageController(initialPage: 0);
  late final StreamSubscription<CartState> _cartSub;

  void _onChangePage(ChangePage event, Emitter<MainLayoutState> emit) {
    if (event.index == state.currentIndex) return;
    pageController.jumpToPage(event.index);
    emit(state.copyWith(currentIndex: event.index));
  }

  void _onUpdateCartCount(
    UpdateCartCount event,
    Emitter<MainLayoutState> emit,
  ) {
    final count = event.count < 0 ? 0 : event.count;
    emit(state.copyWith(cartCount: count));
  }

  void _onIncrementCart(IncrementCart event, Emitter<MainLayoutState> emit) {
    emit(state.copyWith(cartCount: state.cartCount + 1));
  }

  void _onDecrementCart(DecrementCart event, Emitter<MainLayoutState> emit) {
    if (state.cartCount <= 0) return;
    emit(state.copyWith(cartCount: state.cartCount - 1));
  }

  void _onClearCart(ClearCart event, Emitter<MainLayoutState> emit) {
    emit(state.copyWith(cartCount: 0));
  }

  @override
  Future<void> close() {
    _cartSub.cancel();
    pageController.dispose();
    return super.close();
  }
}