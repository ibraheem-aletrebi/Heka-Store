import 'package:freezed_annotation/freezed_annotation.dart';

part 'initiate_payment_response_model.freezed.dart';
part 'initiate_payment_response_model.g.dart';

@freezed
class InitiatePaymentResponseModel with _$InitiatePaymentResponseModel {
  const factory InitiatePaymentResponseModel({
    required bool success,
    required InitiatePaymentData data,
    required String message,
  }) = _InitiatePaymentResponseModel;

  factory InitiatePaymentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InitiatePaymentResponseModelFromJson(json);
}

@freezed
class InitiatePaymentData with _$InitiatePaymentData {
  const factory InitiatePaymentData({required PaymentData payment}) =
      _InitiatePaymentData;

  factory InitiatePaymentData.fromJson(Map<String, dynamic> json) =>
      _$InitiatePaymentDataFromJson(json);
}

@freezed
class PaymentData with _$PaymentData {
  const factory PaymentData({
    required String paymentCode,
    required String orderNumber,
    required String method,
    required String status,
    required double amount,
    required String paymentUrl,
    String? paymobTransactionId,
    required String createdAt,
    String? paidAt,
    String? updatedAt,
  }) = _PaymentData;

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);
}
