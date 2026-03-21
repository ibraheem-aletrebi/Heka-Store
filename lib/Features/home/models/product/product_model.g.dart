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
      price: (json['price'] as num).toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toDouble(),
      inStock: json['inStock'] as bool,
      isFeatured: json['isFeatured'] as bool,
      primaryImageUrl: json['primaryImageUrl'] as String?,
      averageRating: (json['averageRating'] as num).toDouble(),
      totalReviews: (json['totalReviews'] as num).toInt(),
      vendorName: json['vendorName'] as String,
      categoryNameEn: json['categoryNameEn'] as String,
      categoryNameAr: json['categoryNameAr'] as String,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'nameAr': instance.nameAr,
      'nameEn': instance.nameEn,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'finalPrice': instance.finalPrice,
      'discountPercentage': instance.discountPercentage,
      'inStock': instance.inStock,
      'isFeatured': instance.isFeatured,
      'primaryImageUrl': instance.primaryImageUrl,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'vendorName': instance.vendorName,
      'categoryNameEn': instance.categoryNameEn,
      'categoryNameAr': instance.categoryNameAr,
    };
