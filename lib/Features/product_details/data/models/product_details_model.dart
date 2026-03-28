import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:heka_store/Features/product_details/data/models/product_image_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_model.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
@HiveType(typeId: 13)
class ProductDetailsModel with _$ProductDetailsModel {
  const factory ProductDetailsModel({
    @HiveField(0) required int id,
    @HiveField(1) required String code,
    @HiveField(2) required String nameAr,
    @HiveField(3) required String nameEn,
    @HiveField(4) required String descriptionAr,
    @HiveField(5) required String descriptionEn,
    @HiveField(6) required double price,
    @HiveField(7) required double discountPrice,
    @HiveField(8) required double finalPrice,
    @HiveField(9) required int discountPercentage,
    @HiveField(10) required int stockQuantity,
    @HiveField(11) required String sku,
    @HiveField(12) required bool isEgyptianMade,
    @HiveField(13) required String madeInCity,
    @HiveField(14) required String madeInGovernorate,
    @HiveField(15) required bool isFeatured,
    @HiveField(16) required bool isActive,
    @HiveField(17) required bool inStock,
    @HiveField(18) required int viewCount,
    @HiveField(19) required double averageRating,
    @HiveField(20) required int totalReviews,
    @HiveField(21) required String createdAt,
    @HiveField(22) String? updatedAt,
    @HiveField(23) required int vendorId,
    @HiveField(24) required String vendorName,
    @HiveField(25) required String vendorNameAr,
    @HiveField(26) required int categoryId,
    @HiveField(27) required String categoryNameAr,
    @HiveField(28) required String categoryNameEn,
    @HiveField(29) required List<ProductImageModel> images,
    @HiveField(30) required List<ProductVariantModel> variants,
  }) = _ProductModel;

  const ProductDetailsModel._();

  ProductImageModel? get primaryImage =>
      images.where((i) => i.isPrimary).firstOrNull ?? images.firstOrNull;

  String localizedName(String languageCode) =>
      languageCode == 'ar' ? nameAr : nameEn;

  String localizedDescription(String languageCode) =>
      languageCode == 'ar' ? descriptionAr : descriptionEn;

  bool get hasDiscount => discountPercentage > 0;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}