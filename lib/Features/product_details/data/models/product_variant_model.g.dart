// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductVariantModelAdapter extends TypeAdapter<ProductVariantModel> {
  @override
  final int typeId = 14;

  @override
  ProductVariantModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductVariantModel(
      typeName: fields[0] as String,
      options: (fields[1] as List).cast<ProductVariantOptionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ProductVariantModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.typeName)
      ..writeByte(1)
      ..write(obj.options);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductVariantModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductVariantModelImpl _$$ProductVariantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductVariantModelImpl(
      typeName: json['typeName'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) =>
              ProductVariantOptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductVariantModelImplToJson(
        _$ProductVariantModelImpl instance) =>
    <String, dynamic>{
      'typeName': instance.typeName,
      'options': instance.options,
    };
