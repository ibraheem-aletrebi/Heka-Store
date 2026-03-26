part of 'may_like_bloc.dart';

@freezed
class MayLikeState with _$MayLikeState {
  const factory MayLikeState({
    @Default([]) List<ProductModel> products,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasNextPage,
    @Default(1) int currentPage,
    ApiErrorModel? error,
    @Default(false) bool isRefreshing,
  }) = _MayLikeState;

  const MayLikeState._();
  bool get hasError => error != null;
}