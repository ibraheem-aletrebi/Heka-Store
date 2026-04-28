import 'package:hive/hive.dart';

part 'review_model.g.dart';

@HiveType(typeId: 10) // adjust typeId to avoid conflicts
class ReviewModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final int productId;

  @HiveField(2)
  final String productName;

  @HiveField(3)
  final String userId;

  @HiveField(4)
  final String userName;

  @HiveField(5)
  final int rating;

  @HiveField(6)
  final String comment;

  @HiveField(7)
  final bool isApproved;

  @HiveField(8)
  final DateTime createdAt;

  ReviewModel({
    required this.id,
    required this.productId,
    required this.productName,
    required this.userId,
    required this.userName,
    required this.rating,
    required this.comment,
    required this.isApproved,
    required this.createdAt,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) => ReviewModel(
        id: json['id'] as int,
        productId: json['productId'] as int,
        productName: json['productName'] as String,
        userId: json['userId'] as String,
        userName: json['userName'] as String,
        rating: json['rating'] as int,
        comment: json['comment'] as String,
        isApproved: json['isApproved'] as bool,
        createdAt: DateTime.parse(json['createdAt'] as String),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'productId': productId,
        'productName': productName,
        'userId': userId,
        'userName': userName,
        'rating': rating,
        'comment': comment,
        'isApproved': isApproved,
        'createdAt': createdAt.toIso8601String(),
      };
}

// ──────────────────────────────────────────────
// Paginated response wrapper
// ──────────────────────────────────────────────
class ReviewsPage {
  final List<ReviewModel> items;
  final int totalCount;
  final int pageNumber;
  final int pageSize;
  final int totalPages;
  final bool hasPreviousPage;
  final bool hasNextPage;

  const ReviewsPage({
    required this.items,
    required this.totalCount,
    required this.pageNumber,
    required this.pageSize,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  factory ReviewsPage.fromJson(Map<String, dynamic> json) => ReviewsPage(
        items: (json['items'] as List)
            .map((e) => ReviewModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        totalCount: json['totalCount'] as int,
        pageNumber: json['pageNumber'] as int,
        pageSize: json['pageSize'] as int,
        totalPages: json['totalPages'] as int,
        hasPreviousPage: json['hasPreviousPage'] as bool,
        hasNextPage: json['hasNextPage'] as bool,
      );
}