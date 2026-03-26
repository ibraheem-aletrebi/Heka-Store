part of 'recommended_for_you_bloc.dart';
@freezed
class RecommendedForYouState with _$RecommendedForYouState {
  const factory RecommendedForYouState({
   
    @Default([]) List<ProductModel> recommendedProducts,
    @Default(false) bool isRecommendedLoading,
    @Default(false) bool isRecommendedLoadingMore,
    @Default(false) bool hasRecommendedNextPage,
    @Default(1) int recommendedCurrentPage,
    ApiErrorModel? recommendedError,

    @Default(false) bool isRefreshing,
  }) = _RecommendedForYouState;

  const RecommendedForYouState._();


  bool get hasError => recommendedError != null ;
     
}