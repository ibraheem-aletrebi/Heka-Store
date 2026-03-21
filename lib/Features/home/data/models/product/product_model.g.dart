// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 3;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      id: fields[0] as int,
      code: fields[1] as String,
      nameAr: fields[2] as String,
      nameEn: fields[3] as String,
      price: fields[4] as double,
      discountPrice: fields[5] as double?,
      finalPrice: fields[6] as double,
      discountPercentage: fields[7] as double?,
      inStock: fields[8] as bool,
      isFeatured: fields[9] as bool,
      primaryImageUrl: fields[10] as String?,
      averageRating: fields[11] as double,
      totalReviews: fields[12] as int,
      vendorName: fields[13] as String,
      categoryNameEn: fields[14] as String,
      categoryNameAr: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(16)
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
      ..write(obj.primaryImageUrl)
      ..writeByte(11)
      ..write(obj.averageRating)
      ..writeByte(12)
      ..write(obj.totalReviews)
      ..writeByte(13)
      ..write(obj.vendorName)
      ..writeByte(14)
      ..write(obj.categoryNameEn)
      ..writeByte(15)
      ..write(obj.categoryNameAr);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
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
