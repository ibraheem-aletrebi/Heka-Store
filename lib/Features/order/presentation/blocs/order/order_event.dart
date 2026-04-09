part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  /// Triggered when the user confirms the order from the checkout screen.
  const factory OrderEvent.placed({required CreateOrderRequestModel request}) =
      _OrderPlaced;

  /// Triggered by the deep-link handler when heka://payment-success arrives.
  const factory OrderEvent.paymentSuccess({required String orderNumber}) =
      _PaymentSuccess;

  /// Triggered when the user closes the WebView without completing payment.
  const factory OrderEvent.paymentCancelled() = _PaymentCancelled;

  /// Resets the bloc to its initial state (e.g. when navigating away).
  const factory OrderEvent.reset() = _Reset;
}
