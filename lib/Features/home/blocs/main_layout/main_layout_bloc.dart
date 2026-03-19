import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_layout_event.dart';
part 'main_layout_state.dart';
part 'main_layout_bloc.freezed.dart';

class MainLayoutBloc extends Bloc<MainLayoutEvent, MainLayoutState> {
  MainLayoutBloc() : super(const MainLayoutState()) {
    on<ChangePage>(_onChangePage);
    on<UpdateCartCount>(_onUpdateCartCount);
    on<IncrementCart>(_onIncrementCart);
    on<DecrementCart>(_onDecrementCart);
    on<ClearCart>(_onClearCart);
  }

  final PageController pageController = PageController();

  void _onChangePage(ChangePage event, Emitter<MainLayoutState> emit) {
    if (event.index == state.currentIndex) return;
    pageController.jumpToPage(event.index);
    emit(state.copyWith(currentIndex: event.index));
  }

  void _onUpdateCartCount(
    UpdateCartCount event,
    Emitter<MainLayoutState> emit,
  ) {
    emit(state.copyWith(cartCount: event.count));
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
    pageController.dispose();
    return super.close();
  }
}
