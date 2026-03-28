// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_option_model.dart';

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
