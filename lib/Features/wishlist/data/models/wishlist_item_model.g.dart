// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WishlistItemModelAdapter extends TypeAdapter<WishlistItemModel> {
  @override
  final int typeId = 7;

  @override
  WishlistItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WishlistItemModel(
      id: fields[0] as int,
      productId: fields[1] as int,
      productName: fields[2] as String,
      productNameAr: fields[3] as String,
      price: fields[4] as double,
      discountPrice: fields[5] as double?,
      finalPrice: fields[6] as double,
      imageUrl: fields[7] as String?,
      vendorName: fields[8] as String,
      vendorId: fields[9] as int,
      inStock: fields[10] as bool,
      averageRating: fields[11] as double,
      totalReviews: fields[12] as int,
      addedAt: fields[13] as String,
    );
  }

  @override
  void write(BinaryWriter writer, WishlistItemModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.productNameAr)
      ..writeByte(4)
      ..write(obj.price)
      ..writeByte(5)
      ..write(obj.discountPrice)
      ..writeByte(6)
      ..write(obj.finalPrice)
      ..writeByte(7)
      ..write(obj.imageUrl)
      ..writeByte(8)
      ..write(obj.vendorName)
      ..writeByte(9)
      ..write(obj.vendorId)
      ..writeByte(10)
      ..write(obj.inStock)
      ..writeByte(11)
      ..write(obj.averageRating)
      ..writeByte(12)
      ..write(obj.totalReviews)
      ..writeByte(13)
      ..write(obj.addedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WishlistItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistItemModelImpl _$$WishlistItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistItemModelImpl(
      id: (json['id'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      productName: json['productName'] as String,
      productNameAr: json['productNameAr'] as String,
      price: (json['price'] as num).toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      finalPrice: (json['finalPrice'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
      vendorName: json['vendorName'] as String,
      vendorId: (json['vendorId'] as num).toInt(),
      inStock: json['inStock'] as bool,
      averageRating: (json['averageRating'] as num).toDouble(),
      totalReviews: (json['totalReviews'] as num).toInt(),
      addedAt: json['addedAt'] as String,
    );

Map<String, dynamic> _$$WishlistItemModelImplToJson(
        _$WishlistItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productName': instance.productName,
      'productNameAr': instance.productNameAr,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'finalPrice': instance.finalPrice,
      'imageUrl': instance.imageUrl,
      'vendorName': instance.vendorName,
      'vendorId': instance.vendorId,
      'inStock': instance.inStock,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'addedAt': instance.addedAt,
    };
