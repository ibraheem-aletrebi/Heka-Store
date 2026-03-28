// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      nameAr: json['nameAr'] as String,
      nameEn: json['nameEn'] as String,
      descriptionAr: json['descriptionAr'] as String,
      descriptionEn: json['descriptionEn'] as String,
      price: (json['price'] as num).toDouble(),
      discountPrice: (json['discountPrice'] as num).toDouble(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toInt(),
      stockQuantity: (json['stockQuantity'] as num).toInt(),
      sku: json['sku'] as String,
      isEgyptianMade: json['isEgyptianMade'] as bool,
      madeInCity: json['madeInCity'] as String,
      madeInGovernorate: json['madeInGovernorate'] as String,
      isFeatured: json['isFeatured'] as bool,
      isActive: json['isActive'] as bool,
      inStock: json['inStock'] as bool,
      viewCount: (json['viewCount'] as num).toInt(),
      averageRating: (json['averageRating'] as num).toDouble(),
      totalReviews: (json['totalReviews'] as num).toInt(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String?,
      vendorId: (json['vendorId'] as num).toInt(),
      vendorName: json['vendorName'] as String,
      vendorNameAr: json['vendorNameAr'] as String,
      categoryId: (json['categoryId'] as num).toInt(),
      categoryNameAr: json['categoryNameAr'] as String,
      categoryNameEn: json['categoryNameEn'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ProductImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      variants: (json['variants'] as List<dynamic>)
          .map((e) => ProductVariantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'nameAr': instance.nameAr,
      'nameEn': instance.nameEn,
      'descriptionAr': instance.descriptionAr,
      'descriptionEn': instance.descriptionEn,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'finalPrice': instance.finalPrice,
      'discountPercentage': instance.discountPercentage,
      'stockQuantity': instance.stockQuantity,
      'sku': instance.sku,
      'isEgyptianMade': instance.isEgyptianMade,
      'madeInCity': instance.madeInCity,
      'madeInGovernorate': instance.madeInGovernorate,
      'isFeatured': instance.isFeatured,
      'isActive': instance.isActive,
      'inStock': instance.inStock,
      'viewCount': instance.viewCount,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'vendorId': instance.vendorId,
      'vendorName': instance.vendorName,
      'vendorNameAr': instance.vendorNameAr,
      'categoryId': instance.categoryId,
      'categoryNameAr': instance.categoryNameAr,
      'categoryNameEn': instance.categoryNameEn,
      'images': instance.images,
      'variants': instance.variants,
    };
