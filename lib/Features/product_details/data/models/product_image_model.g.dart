// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_model.dart';

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
