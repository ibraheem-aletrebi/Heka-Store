part of 'main_layout_cubit.dart';

class MainLayoutState extends Equatable {
  final int currentIndex;
  final int cartCount;

  const MainLayoutState({this.currentIndex = 0, this.cartCount = 0});

  MainLayoutState copyWith({int? currentIndex, int? cartCount}) =>
      MainLayoutState(
        currentIndex: currentIndex ?? this.currentIndex,
        cartCount: cartCount ?? this.cartCount,
      );

  @override
  List<Object?> get props => [currentIndex, cartCount];
}
