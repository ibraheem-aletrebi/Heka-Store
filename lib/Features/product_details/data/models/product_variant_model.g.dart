// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variant_model.dart';

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
