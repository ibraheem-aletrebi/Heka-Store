
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'wishlist_item_model.freezed.dart';
part 'wishlist_item_model.g.dart';

@freezed
@HiveType(typeId: 7)
class WishlistItemModel with _$WishlistItemModel {
  const factory WishlistItemModel({
    @HiveField(0) required int id,
    @HiveField(1) required int productId,
    @HiveField(2) required String productName,
    @HiveField(3) required String productNameAr,
    @HiveField(4) required double price,
    @HiveField(5) double? discountPrice,
    @HiveField(6) required double finalPrice,
    @HiveField(7) String? imageUrl,
    @HiveField(8) required String vendorName,
    @HiveField(9) required int vendorId,
    @HiveField(10) required bool inStock,
    @HiveField(11) required double averageRating,
    @HiveField(12) required int totalReviews,
    @HiveField(13) required String addedAt,
  }) = _WishlistItemModel;

  factory WishlistItemModel.fromJson(Map<String, dynamic> json) =>
      _$WishlistItemModelFromJson(json);
}