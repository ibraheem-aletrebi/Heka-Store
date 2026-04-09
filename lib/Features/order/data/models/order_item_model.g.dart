// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      id: (json['id'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      productNameAr: json['productNameAr'] as String,
      productNameEn: json['productNameEn'] as String,
      productImage: json['productImage'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      variantId: (json['variantId'] as num?)?.toInt(),
      variantTypeName: json['variantTypeName'] as String?,
      variantValue: json['variantValue'] as String?,
      variantColorHex: json['variantColorHex'] as String?,
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
        _$OrderItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productNameAr': instance.productNameAr,
      'productNameEn': instance.productNameEn,
      'productImage': instance.productImage,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
      'variantId': instance.variantId,
      'variantTypeName': instance.variantTypeName,
      'variantValue': instance.variantValue,
      'variantColorHex': instance.variantColorHex,
    };
