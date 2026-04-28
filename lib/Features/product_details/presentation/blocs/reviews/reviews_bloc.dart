import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/product_details/domain/repos/product_repo.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_event.dart';
import 'package:heka_store/Features/product_details/presentation/blocs/reviews/reviews_state.dart';

// reviews_bloc.dart
class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  final ProductRepo _reviewsRepo;

  ReviewsBloc({required ProductRepo reviewsRepo})
    : _reviewsRepo = reviewsRepo,
      super(const ReviewsState()) {
    on<ReviewsStarted>(_onStarted);
    on<ReviewsNextPageFetched>(_onNextPageFetched);
  }

  Future<void> _onStarted(
    ReviewsStarted event,
    Emitter<ReviewsState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        reviews: [],
        currentPage: 1,
        productId: event.productId,
        pageSize: event.pageSize,
        hasReachedEnd: false,
        error: null,
      ),
    );

    final result = await _reviewsRepo.getProductReviews(
      event.productId,
      pageNumber: 1,
      pageSize: event.pageSize,
    );

    result.when(
      onSuccess: (page) => emit(
        state.copyWith(
          isLoading: false,
          reviews: page.items,
          totalCount: page.totalCount,
          hasReachedEnd: !page.hasNextPage,
          currentPage: 1,
        ),
      ),
      onError: (error) => emit(state.copyWith(isLoading: false, error: error)),
    );
  }

  Future<void> _onNextPageFetched(
    ReviewsNextPageFetched event,
    Emitter<ReviewsState> emit,
  ) async {
    if (state.isFetchingMore || state.hasReachedEnd || state.productId == null)
      return;

    final nextPage = state.currentPage + 1;
    emit(state.copyWith(isFetchingMore: true));

    final result = await _reviewsRepo.getProductReviews(
      state.productId!,
      pageNumber: nextPage,
      pageSize: state.pageSize,
    );

    result.when(
      onSuccess: (page) => emit(
        state.copyWith(
          isFetchingMore: false,
          reviews: [...state.reviews, ...page.items],
          currentPage: nextPage,
          hasReachedEnd: !page.hasNextPage,
        ),
      ),
      onError: (error) =>
          emit(state.copyWith(isFetchingMore: false, error: error)),
    );
  }
}
