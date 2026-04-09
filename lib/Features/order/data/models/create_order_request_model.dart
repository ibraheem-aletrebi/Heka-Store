import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_order_request_model.freezed.dart';
part 'create_order_request_model.g.dart';

/// Payment methods supported by the API.
enum PaymentMethod {
  @JsonValue('CashOnDelivery')
  cashOnDelivery,
  @JsonValue('CreditCard')
  creditCard,
}

@freezed
class CreateOrderRequestModel with _$CreateOrderRequestModel {
  const factory CreateOrderRequestModel({
    required String shippingFirstName,
    required String shippingLastName,
    required String shippingPhone,
    required int addressId,
    double? latitude,
    double? longitude,
    String? shippingAddress,
    required PaymentMethod paymentMethod,
    @Default('mobile') String clientType,
    String? notes,
  }) = _CreateOrderRequestModel;

  factory CreateOrderRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderRequestModelFromJson(json);
}
