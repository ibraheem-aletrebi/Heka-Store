// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderRequestModelImpl _$$CreateOrderRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderRequestModelImpl(
      shippingFirstName: json['shippingFirstName'] as String,
      shippingLastName: json['shippingLastName'] as String,
      shippingPhone: json['shippingPhone'] as String,
      addressId: (json['addressId'] as num).toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      shippingAddress: json['shippingAddress'] as String?,
      paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
      clientType: json['clientType'] as String? ?? 'mobile',
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$CreateOrderRequestModelImplToJson(
        _$CreateOrderRequestModelImpl instance) =>
    <String, dynamic>{
      'shippingFirstName': instance.shippingFirstName,
      'shippingLastName': instance.shippingLastName,
      'shippingPhone': instance.shippingPhone,
      'addressId': instance.addressId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'shippingAddress': instance.shippingAddress,
      'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
      'clientType': instance.clientType,
      'notes': instance.notes,
    };

const _$PaymentMethodEnumMap = {
  PaymentMethod.cashOnDelivery: 'CashOnDelivery',
  PaymentMethod.creditCard: 'CreditCard',
};
