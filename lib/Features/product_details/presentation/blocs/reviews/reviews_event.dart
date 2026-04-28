// reviews_event.dart
abstract class ReviewsEvent {
  const ReviewsEvent();
}

class ReviewsStarted extends ReviewsEvent {
  final int productId;
  final int pageSize;
  const ReviewsStarted({required this.productId, this.pageSize = 5});
}

class ReviewsNextPageFetched extends ReviewsEvent {
  const ReviewsNextPageFetched();
}