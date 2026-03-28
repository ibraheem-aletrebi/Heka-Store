import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/product_details/data/models/product_image_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_model.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String code,
    required String nameAr,
    required String nameEn,
    required String descriptionAr,
    required String descriptionEn,
    required double price,
    required double discountPrice,
    required double finalPrice,
    required int discountPercentage,
    required int stockQuantity,
    required String sku,
    required bool isEgyptianMade,
    required String madeInCity,
    required String madeInGovernorate,
    required bool isFeatured,
    required bool isActive,
    required bool inStock,
    required int viewCount,
    required double averageRating,
    required int totalReviews,
    required String createdAt,
    String? updatedAt,
    required int vendorId,
    required String vendorName,
    required String vendorNameAr,
    required int categoryId,
    required String categoryNameAr,
    required String categoryNameEn,
    required List<ProductImageModel> images,
    required List<ProductVariantModel> variants,
  }) = _ProductModel;

  const ProductModel._();

  /// Primary image or first image fallback
  ProductImageModel? get primaryImage =>
      images.where((i) => i.isPrimary).firstOrNull ?? images.firstOrNull;

  /// Localized name based on language code
  String localizedName(String languageCode) =>
      languageCode == 'ar' ? nameAr : nameEn;

  /// Localized description based on language code
  String localizedDescription(String languageCode) =>
      languageCode == 'ar' ? descriptionAr : descriptionEn;

  /// Whether product has an active discount
  bool get hasDiscount => discountPercentage > 0;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}