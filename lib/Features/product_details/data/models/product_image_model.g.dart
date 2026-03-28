// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductImageModelAdapter extends TypeAdapter<ProductImageModel> {
  @override
  final int typeId = 4;

  @override
  ProductImageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductImageModel(
      id: fields[0] as int,
      imageUrl: fields[1] as String,
      isPrimary: fields[2] as bool,
      displayOrder: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ProductImageModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.isPrimary)
      ..writeByte(3)
      ..write(obj.displayOrder);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductImageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImageModelImpl _$$ProductImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductImageModelImpl(
      id: (json['id'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      isPrimary: json['isPrimary'] as bool,
      displayOrder: (json['displayOrder'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductImageModelImplToJson(
        _$ProductImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'isPrimary': instance.isPrimary,
      'displayOrder': instance.displayOrder,
    };
