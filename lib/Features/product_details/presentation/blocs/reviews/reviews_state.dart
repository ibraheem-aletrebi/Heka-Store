// reviews_state.dart
import 'package:heka_store/Features/product_details/data/models/review_model.dart';

class ReviewsState {
  final List<ReviewModel> reviews;
  final bool isLoading;
  final bool isFetchingMore;
  final bool hasReachedEnd;
  final int currentPage;
  final int pageSize;
  final int? productId;
  final Object? error;
  final int? totalCount;

  const ReviewsState({
    this.reviews = const [],
    this.isLoading = false,
    this.isFetchingMore = false,
    this.hasReachedEnd = false,
    this.currentPage = 1,
    this.pageSize = 10,
    this.productId,
    this.error,
    this.totalCount,
  });

  ReviewsState copyWith({
    List<ReviewModel>? reviews,
    bool? isLoading,
    bool? isFetchingMore,
    bool? hasReachedEnd,
    int? currentPage,
    int? pageSize,
    int? productId,
    Object? error,
    int? totalCount,
  }) {
    return ReviewsState(
      reviews: reviews ?? this.reviews,
      isLoading: isLoading ?? this.isLoading,
      isFetchingMore: isFetchingMore ?? this.isFetchingMore,
      hasReachedEnd: hasReachedEnd ?? this.hasReachedEnd,
      currentPage: currentPage ?? this.currentPage,
      pageSize: pageSize ?? this.pageSize,
      productId: productId ?? this.productId,
      error: error ?? this.error,
      totalCount: totalCount ?? this.totalCount,
    );
  }
}