// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BrandProfileModelAdapter extends TypeAdapter<BrandProfileModel> {
  @override
  final int typeId = 49;

  @override
  BrandProfileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BrandProfileModel(
      id: fields[0] as int,
      storeNameEn: fields[1] as String,
      storeNameAr: fields[2] as String,
      description: fields[3] as String?,
      logoUrl: fields[4] as String?,
      bannerImageUrl: fields[5] as String?,
      averageRating: fields[6] as double?,
      totalReviews: fields[7] as int?,
      joinedDate: fields[8] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, BrandProfileModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.storeNameEn)
      ..writeByte(2)
      ..write(obj.storeNameAr)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.logoUrl)
      ..writeByte(5)
      ..write(obj.bannerImageUrl)
      ..writeByte(6)
      ..write(obj.averageRating)
      ..writeByte(7)
      ..write(obj.totalReviews)
      ..writeByte(8)
      ..write(obj.joinedDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandProfileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandProfileModelImpl _$$BrandProfileModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandProfileModelImpl(
      id: (json['id'] as num).toInt(),
      storeNameEn: json['storeName'] as String,
      storeNameAr: json['storeNameAr'] as String,
      description: json['description'] as String?,
      logoUrl: json['logoUrl'] as String?,
      bannerImageUrl: json['bannerImageUrl'] as String?,
      averageRating: (json['averageRating'] as num?)?.toDouble(),
      totalReviews: (json['totalReviews'] as num?)?.toInt(),
      joinedDate: json['joinedDate'] == null
          ? null
          : DateTime.parse(json['joinedDate'] as String),
    );

Map<String, dynamic> _$$BrandProfileModelImplToJson(
        _$BrandProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeName': instance.storeNameEn,
      'storeNameAr': instance.storeNameAr,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'bannerImageUrl': instance.bannerImageUrl,
      'averageRating': instance.averageRating,
      'totalReviews': instance.totalReviews,
      'joinedDate': instance.joinedDate?.toIso8601String(),
    };
