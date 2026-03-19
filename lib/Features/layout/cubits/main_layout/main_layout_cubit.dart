import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_layout_state.dart';

class MainLayoutCubit extends Cubit<MainLayoutState> {
  MainLayoutCubit() : super(const MainLayoutState());

  final PageController pageController = PageController();

  void changePage(int index) {
    if (index == state.currentIndex) return;
    pageController.jumpToPage(index);
    emit(state.copyWith(currentIndex: index));
  }

  void updateCartCount(int count) {
    emit(state.copyWith(cartCount: count));
  }

  void incrementCart() {
    emit(state.copyWith(cartCount: state.cartCount + 1));
  }

  void decrementCart() {
    if (state.cartCount <= 0) return;
    emit(state.copyWith(cartCount: state.cartCount - 1));
  }

  void clearCart() {
    emit(state.copyWith(cartCount: 0));
  }

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
