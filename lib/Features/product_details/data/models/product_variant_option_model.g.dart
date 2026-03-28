// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_option_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductVariantOptionModelAdapter
    extends TypeAdapter<ProductVariantOptionModel> {
  @override
  final int typeId = 15;

  @override
  ProductVariantOptionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductVariantOptionModel(
      id: fields[0] as int,
      typeName: fields[1] as String,
      value: fields[2] as String,
      colorHex: fields[3] as String,
      priceAdjustment: fields[4] as double,
      stockQuantity: fields[5] as int,
      displayOrder: fields[6] as int,
      isActive: fields[7] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductVariantOptionModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.typeName)
      ..writeByte(2)
      ..write(obj.value)
      ..writeByte(3)
      ..write(obj.colorHex)
      ..writeByte(4)
      ..write(obj.priceAdjustment)
      ..writeByte(5)
      ..write(obj.stockQuantity)
      ..writeByte(6)
      ..write(obj.displayOrder)
      ..writeByte(7)
      ..write(obj.isActive);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVariantOptionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariantOptionModelImpl _$$ProductVariantOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantOptionModelImpl(
      id: (json['id'] as num).toInt(),
      typeName: json['typeName'] as String,
      value: json['value'] as String,
      colorHex: json['colorHex'] as String,
      priceAdjustment: (json['priceAdjustment'] as num).toDouble(),
      stockQuantity: (json['stockQuantity'] as num).toInt(),
      displayOrder: (json['displayOrder'] as num).toInt(),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$$ProductVariantOptionModelImplToJson(
        _$ProductVariantOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'typeName': instance.typeName,
      'value': instance.value,
      'colorHex': instance.colorHex,
      'priceAdjustment': instance.priceAdjustment,
      'stockQuantity': instance.stockQuantity,
      'displayOrder': instance.displayOrder,
      'isActive': instance.isActive,
    };
