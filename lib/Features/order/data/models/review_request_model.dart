class ReviewRequestModel {
  final int productId;
  final int rating;
  final String comment;

  const ReviewRequestModel({
    required this.productId,
    required this.rating,
    required this.comment,
  });

  Map<String, dynamic> toJson() => {
        'productId': productId,
        'rating': rating,
        'comment': comment,
      };
}