// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrandModelAdapter extends TypeAdapter<BrandModel> {
  @override
  final int typeId = 5;

  @override
  BrandModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandModel(
      id: fields[0] as int,
      storeNameAr: fields[1] as String,
      storeNameEn: fields[2] as String,
      logoUrl: fields[3] as String?,
      averageRating: fields[4] as double?,
      totalReviews: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, BrandModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.storeNameAr)
      ..writeByte(2)
      ..write(obj.storeNameEn)
      ..writeByte(3)
      ..write(obj.logoUrl)
      ..writeByte(4)
      ..write(obj.averageRating)
      ..writeByte(5)
      ..write(obj.totalReviews);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandModelImpl _$$BrandModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandModelImpl(
      id: (json['id'] as num).toInt(),
      storeNameAr: json['storeNameAr'] as String,
      storeNameEn: json['storeName'] as String,
      logoUrl: json['logoUrl'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      totalReviews: (json['totalReviews'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BrandModelImplToJson(_$BrandModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeNameAr': instance.storeNameAr,
      'storeName': instance.storeNameEn,
      'logoUrl': instance.logoUrl,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
    };
