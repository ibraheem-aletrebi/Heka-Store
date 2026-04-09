// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyOrderModelImpl _$$MyOrderModelImplFromJson(Map<String, dynamic> json) =>
    _$MyOrderModelImpl(
      id: (json['id'] as num).toInt(),
      orderNumber: json['orderNumber'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      status: json['status'] as String,
      statusId: (json['statusId'] as num).toInt(),
      orderDate: json['orderDate'] as String,
      itemsCount: (json['itemsCount'] as num).toInt(),
      vendorName: json['vendorName'] as String,
    );

Map<String, dynamic> _$$MyOrderModelImplToJson(_$MyOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'totalAmount': instance.totalAmount,
      'status': instance.status,
      'statusId': instance.statusId,
      'orderDate': instance.orderDate,
      'itemsCount': instance.itemsCount,
      'vendorName': instance.vendorName,
    };
