// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_variant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedVariantModelImpl _$$SelectedVariantModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedVariantModelImpl(
      variantId: (json['variantId'] as num).toInt(),
      typeName: json['typeName'] as String,
      value: json['value'] as String,
      colorHex: json['colorHex'] as String,
      priceAdjustment: (json['priceAdjustment'] as num).toDouble(),
    );

Map<String, dynamic> _$$SelectedVariantModelImplToJson(
        _$SelectedVariantModelImpl instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'typeName': instance.typeName,
      'value': instance.value,
      'colorHex': instance.colorHex,
      'priceAdjustment': instance.priceAdjustment,
    };
