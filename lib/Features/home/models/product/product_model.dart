// features/home/data/models/product_model.dart — أضف HiveType

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
@HiveType(typeId: 3)
class ProductModel with _$ProductModel {
  const factory ProductModel({
    @HiveField(0) required int id,
    @HiveField(1) required String code,
    @HiveField(2) required String nameAr,
    @HiveField(3) required String nameEn,
    @HiveField(4) required double price,
    @HiveField(5) double? discountPrice,
    @HiveField(6) required double finalPrice,
    @HiveField(7) double? discountPercentage,
    @HiveField(8) required bool inStock,
    @HiveField(9) required bool isFeatured,
    @HiveField(10) String? primaryImageUrl,
    @HiveField(11) required double averageRating,
    @HiveField(12) required int totalReviews,
    @HiveField(13) required String vendorName,
    @HiveField(14) required String categoryNameEn,
    @HiveField(15) required String categoryNameAr,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}