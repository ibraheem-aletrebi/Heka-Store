// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrandProductModelAdapter extends TypeAdapter<BrandProductModel> {
  @override
  final int typeId = 50;

  @override
  BrandProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandProductModel(
      id: fields[0] as int,
      code: fields[1] as String,
      nameAr: fields[2] as String,
      nameEn: fields[3] as String,
      price: fields[4] as double,
      discountPrice: fields[5] as double?,
      finalPrice: fields[6] as double,
      discountPercentage: fields[7] as int?,
      inStock: fields[8] as bool,
      isFeatured: fields[9] as bool,
      isActive: fields[10] as bool,
      primaryImageUrl: fields[11] as String?,
      averageRating: fields[12] as double?,
      totalReviews: fields[13] as int?,
      vendorName: fields[14] as String?,
      categoryNameEn: fields[15] as String?,
      categoryNameAr: fields[16] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BrandProductModel obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.nameAr)
      ..writeByte(3)
      ..write(obj.nameEn)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.discountPrice)
      ..writeByte(6)
      ..write(obj.finalPrice)
      ..writeByte(7)
      ..write(obj.discountPercentage)
      ..writeByte(8)
      ..write(obj.inStock)
      ..writeByte(9)
      ..write(obj.isFeatured)
      ..writeByte(10)
      ..write(obj.isActive)
      ..writeByte(11)
      ..write(obj.primaryImageUrl)
      ..writeByte(12)
      ..write(obj.averageRating)
      ..writeByte(13)
      ..write(obj.totalReviews)
      ..writeByte(14)
      ..write(obj.vendorName)
      ..writeByte(15)
      ..write(obj.categoryNameEn)
      ..writeByte(16)
      ..write(obj.categoryNameAr);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandProductModelImpl _$$BrandProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandProductModelImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String,
      nameAr: json['nameAr'] as String,
      nameEn: json['nameEn'] as String,
      price: (json['price'] as num).toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num?)?.toInt(),
      inStock: json['inStock'] as bool,
      isFeatured: json['isFeatured'] as bool,
      isActive: json['isActive'] as bool,
      primaryImageUrl: json['primaryImageUrl'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      totalReviews: (json['totalReviews'] as num?)?.toInt(),
      vendorName: json['vendorName'] as String?,
      categoryNameEn: json['categoryNameEn'] as String?,
      categoryNameAr: json['categoryNameAr'] as String?,
    );

Map<String, dynamic> _$$BrandProductModelImplToJson(
        _$BrandProductModelImpl instance) =>
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
      'isActive': instance.isActive,
      'primaryImageUrl': instance.primaryImageUrl,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'vendorName': instance.vendorName,
      'categoryNameEn': instance.categoryNameEn,
      'categoryNameAr': instance.categoryNameAr,
    };
