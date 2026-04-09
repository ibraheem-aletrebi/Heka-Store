// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_payment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiatePaymentResponseModelImpl _$$InitiatePaymentResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiatePaymentResponseModelImpl(
      success: json['success'] as bool,
      data: InitiatePaymentData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$InitiatePaymentResponseModelImplToJson(
        _$InitiatePaymentResponseModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
    };

_$InitiatePaymentDataImpl _$$InitiatePaymentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiatePaymentDataImpl(
      payment: PaymentData.fromJson(json['payment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitiatePaymentDataImplToJson(
        _$InitiatePaymentDataImpl instance) =>
    <String, dynamic>{
      'payment': instance.payment,
    };

_$PaymentDataImpl _$$PaymentDataImplFromJson(Map<String, dynamic> json) =>
    _$PaymentDataImpl(
      paymentCode: json['paymentCode'] as String,
      orderNumber: json['orderNumber'] as String,
      method: json['method'] as String,
      status: json['status'] as String,
      amount: (json['amount'] as num).toDouble(),
      paymentUrl: json['paymentUrl'] as String,
      paymobTransactionId: json['paymobTransactionId'] as String?,
      createdAt: json['createdAt'] as String,
      paidAt: json['paidAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$PaymentDataImplToJson(_$PaymentDataImpl instance) =>
    <String, dynamic>{
      'paymentCode': instance.paymentCode,
      'orderNumber': instance.orderNumber,
      'method': instance.method,
      'status': instance.status,
      'amount': instance.amount,
      'paymentUrl': instance.paymentUrl,
      'paymobTransactionId': instance.paymobTransactionId,
      'createdAt': instance.createdAt,
      'paidAt': instance.paidAt,
      'updatedAt': instance.updatedAt,
    };
