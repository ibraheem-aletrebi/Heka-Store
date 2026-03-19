part of 'main_layout_bloc.dart';

@freezed
class MainLayoutState with _$MainLayoutState {
  const factory MainLayoutState({
    @Default(0) int currentIndex,
    @Default(0) int cartCount,
  }) = _MainLayoutState;
}