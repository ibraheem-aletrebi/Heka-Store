part of 'order_bloc.dart';

enum OrderStatus {
  idle,
  creatingOrder,
  initiatingPayment,
  awaitingPayment, // WebView is open
  onlinePaymentSuccess, // deep-link received
  cashOnDeliverySuccess, // COD confirmed
  paymentCancelled,
  failed,
}

@freezed
class OrderState with _$OrderState {
  const factory OrderState({
    @Default(OrderStatus.idle) OrderStatus status,
    OrderModel? order,
    String? paymentUrl,
    ApiErrorModel? error,
  }) = _OrderState;

  const OrderState._();

  bool get isLoading =>
      status == OrderStatus.creatingOrder ||
      status == OrderStatus.initiatingPayment;

  bool get isSuccess =>
      status == OrderStatus.onlinePaymentSuccess ||
      status == OrderStatus.cashOnDeliverySuccess;
}
