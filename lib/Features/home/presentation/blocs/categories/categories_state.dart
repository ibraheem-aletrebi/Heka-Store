part of 'categories_bloc.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState({
    @Default([]) List<Category> categories,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasNextPage,
    @Default(1) int currentPage,
    ApiErrorModel? error,
  }) = _CategoriesState;
}