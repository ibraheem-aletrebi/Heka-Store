// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDetailsModelAdapter extends TypeAdapter<ProductDetailsModel> {
  @override
  final int typeId = 13;

  @override
  ProductDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductDetailsModel(
      id: fields[0] as int,
      code: fields[1] as String,
      nameAr: fields[2] as String,
      nameEn: fields[3] as String,
      descriptionAr: fields[4] as String,
      descriptionEn: fields[5] as String,
      price: fields[6] as double,
      discountPrice: fields[7] as double?,
      finalPrice: fields[8] as double,
      discountPercentage: fields[9] as int,
      stockQuantity: fields[10] as int,
      sku: fields[11] as String,
      isEgyptianMade: fields[12] as bool,
      madeInCity: fields[13] as String?,
      madeInGovernorate: fields[14] as String,
      isFeatured: fields[15] as bool,
      isActive: fields[16] as bool,
      inStock: fields[17] as bool,
      viewCount: fields[18] as int,
      averageRating: fields[19] as double,
      totalReviews: fields[20] as int,
      createdAt: fields[21] as String,
      updatedAt: fields[22] as String?,
      vendorId: fields[23] as int,
      vendorName: fields[24] as String,
      vendorNameAr: fields[25] as String,
      categoryId: fields[26] as int,
      categoryNameAr: fields[27] as String,
      categoryNameEn: fields[28] as String,
      images: (fields[29] as List).cast<ProductImageModel>(),
      variants: (fields[30] as List).cast<ProductVariantModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductDetailsModel obj) {
    writer
      ..writeByte(31)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.nameAr)
      ..writeByte(3)
      ..write(obj.nameEn)
      ..writeByte(4)
      ..write(obj.descriptionAr)
      ..writeByte(5)
      ..write(obj.descriptionEn)
      ..writeByte(6)
      ..write(obj.price)
      ..writeByte(7)
      ..write(obj.discountPrice)
      ..writeByte(8)
      ..write(obj.finalPrice)
      ..writeByte(9)
      ..write(obj.discountPercentage)
      ..writeByte(10)
      ..write(obj.stockQuantity)
      ..writeByte(11)
      ..write(obj.sku)
      ..writeByte(12)
      ..write(obj.isEgyptianMade)
      ..writeByte(13)
      ..write(obj.madeInCity)
      ..writeByte(14)
      ..write(obj.madeInGovernorate)
      ..writeByte(15)
      ..write(obj.isFeatured)
      ..writeByte(16)
      ..write(obj.isActive)
      ..writeByte(17)
      ..write(obj.inStock)
      ..writeByte(18)
      ..write(obj.viewCount)
      ..writeByte(19)
      ..write(obj.averageRating)
      ..writeByte(20)
      ..write(obj.totalReviews)
      ..writeByte(21)
      ..write(obj.createdAt)
      ..writeByte(22)
      ..write(obj.updatedAt)
      ..writeByte(23)
      ..write(obj.vendorId)
      ..writeByte(24)
      ..write(obj.vendorName)
      ..writeByte(25)
      ..write(obj.vendorNameAr)
      ..writeByte(26)
      ..write(obj.categoryId)
      ..writeByte(27)
      ..write(obj.categoryNameAr)
      ..writeByte(28)
      ..write(obj.categoryNameEn)
      ..writeByte(29)
      ..write(obj.images)
      ..writeByte(30)
      ..write(obj.variants);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toInt(),
      stockQuantity: (json['stockQuantity'] as num).toInt(),
      sku: json['sku'] as String,
      isEgyptianMade: json['isEgyptianMade'] as bool,
      madeInCity: json['madeInCity'] as String?,
      madeInGovernorate: json['madeInGovernorate'] as String,
      isFeatured: json['isFeatured'] as bool,
      isActive: json['isActive'] as bool,
      inStock: json['inStock'] as bool,
      viewCount: (json['viewCount'] as num).toInt(),
      averageRating: _ratingFromJson(json['averageRating'] as num),
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
