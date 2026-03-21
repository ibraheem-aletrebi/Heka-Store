
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String code,
    required String nameAr,
    required String nameEn,
    required double price,
    double? discountPrice,
    required double finalPrice,
    double? discountPercentage,
    required bool inStock,
    required bool isFeatured,
    String? primaryImageUrl,
    required double averageRating,
    required int totalReviews,
    required String vendorName,
    required String categoryNameEn,
    required String categoryNameAr,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}