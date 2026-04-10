import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'brand_product_model.freezed.dart';
part 'brand_product_model.g.dart';

@freezed
@HiveType(typeId: 50)
class BrandProductModel with _$BrandProductModel {
  const factory BrandProductModel({
    @HiveField(0) required int id,
    @HiveField(1) required String code,
    @HiveField(2) required String nameAr,
    @HiveField(3) required String nameEn,
    @HiveField(4) required double price,
    @HiveField(5) double? discountPrice,
    @HiveField(6) required double finalPrice,
    @HiveField(7) int? discountPercentage,
    @HiveField(8) required bool inStock,
    @HiveField(9) required bool isFeatured,
    @HiveField(10) required bool isActive,
    @HiveField(11) String? primaryImageUrl,
    @HiveField(12) double? averageRating,
    @HiveField(13) int? totalReviews,
    @HiveField(14) String? vendorName,
    @HiveField(15) String? categoryNameEn,
    @HiveField(16) String? categoryNameAr,
  }) = _BrandProductModel;

  factory BrandProductModel.fromJson(Map<String, dynamic> json) =>
      _$BrandProductModelFromJson(json);
}