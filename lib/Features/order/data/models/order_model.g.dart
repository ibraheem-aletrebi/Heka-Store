// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: (json['id'] as num).toInt(),
      orderNumber: json['orderNumber'] as String,
      subTotal: (json['subTotal'] as num).toDouble(),
      shippingCost: (json['shippingCost'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      status: json['status'] as String,
      statusId: (json['statusId'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      paymentStatus: json['paymentStatus'] as String,
      orderDate: json['orderDate'] as String,
      deliveredAt: json['deliveredAt'] as String?,
      shippingFirstName: json['shippingFirstName'] as String,
      shippingLastName: json['shippingLastName'] as String,
      shippingPhone: json['shippingPhone'] as String,
      shippingAddress: json['shippingAddress'] as String,
      shippingLatitude: (json['shippingLatitude'] as num).toDouble(),
      shippingLongitude: (json['shippingLongitude'] as num).toDouble(),
      notes: json['notes'] as String?,
      vendorId: (json['vendorId'] as num).toInt(),
      vendorName: json['vendorName'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'subTotal': instance.subTotal,
      'shippingCost': instance.shippingCost,
      'totalAmount': instance.totalAmount,
      'status': instance.status,
      'statusId': instance.statusId,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'orderDate': instance.orderDate,
      'deliveredAt': instance.deliveredAt,
      'shippingFirstName': instance.shippingFirstName,
      'shippingLastName': instance.shippingLastName,
      'shippingPhone': instance.shippingPhone,
      'shippingAddress': instance.shippingAddress,
      'shippingLatitude': instance.shippingLatitude,
      'shippingLongitude': instance.shippingLongitude,
      'notes': instance.notes,
      'vendorId': instance.vendorId,
      'vendorName': instance.vendorName,
      'items': instance.items,
    };
