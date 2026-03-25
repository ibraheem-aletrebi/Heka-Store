// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartModelImpl _$$CartModelImplFromJson(Map<String, dynamic> json) =>
    _$CartModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: (json['totalItems'] as num).toInt(),
      subTotal: (json['subTotal'] as num).toDouble(),
      shippingCost: (json['shippingCost'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      hasOutOfStockItems: json['hasOutOfStockItems'] as bool,
    );

Map<String, dynamic> _$$CartModelImplToJson(_$CartModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalItems': instance.totalItems,
      'subTotal': instance.subTotal,
      'shippingCost': instance.shippingCost,
      'totalAmount': instance.totalAmount,
      'hasOutOfStockItems': instance.hasOutOfStockItems,
    };
