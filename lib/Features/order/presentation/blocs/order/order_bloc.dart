import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/order/data/models/create_order_request_model.dart';
import 'package:heka_store/Features/order/data/models/order_model.dart';
import 'package:heka_store/Features/order/domain/use_cases/initiate_payment_use_case.dart';
import 'package:heka_store/Features/order/domain/use_cases/order_use_cases.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final CreateOrderUseCase _createOrderUseCase;
  final InitiatePaymentUseCase _initiatePaymentUseCase;

  OrderBloc({
    required CreateOrderUseCase createOrderUseCase,
    required InitiatePaymentUseCase initiatePaymentUseCase,
  }) : _createOrderUseCase = createOrderUseCase,
       _initiatePaymentUseCase = initiatePaymentUseCase,
       super(const OrderState()) {
    on<_OrderPlaced>(_onOrderPlaced);
    on<_PaymentSuccess>(_onPaymentSuccess);
    on<_PaymentCancelled>(_onPaymentCancelled);
    on<_Reset>(_onReset);
  }

  Future<void> _onOrderPlaced(
    _OrderPlaced event,
    Emitter<OrderState> emit,
  ) async {
    emit(state.copyWith(status: OrderStatus.creatingOrder, error: null));

    final result = await _createOrderUseCase(event.request);

    await result.when(
      onError: (error) async =>
          emit(state.copyWith(status: OrderStatus.failed, error: error)),
      onSuccess: (order) async {
        // ── Cash on delivery → go straight to success
        if (event.request.paymentMethod == PaymentMethod.cashOnDelivery) {
          emit(
            state.copyWith(
              status: OrderStatus.cashOnDeliverySuccess,
              order: order,
            ),
          );
          return;
        }

        // ── Online: URL already returned by create-order response
        if (order.paymentUrl != null) {
          emit(
            state.copyWith(
              status: OrderStatus.awaitingPayment,
              order: order,
              paymentUrl: order.paymentUrl,
            ),
          );
          return;
        }

        // ── Online fallback: call initiate-payment separately
        emit(
          state.copyWith(status: OrderStatus.initiatingPayment, order: order),
        );
        await _initiatePaymentSeparately(order, emit);
      },
    );
  }

  Future<void> _initiatePaymentSeparately(
    OrderModel order,
    Emitter<OrderState> emit,
  ) async {
    final result = await _initiatePaymentUseCase(order.id);
    result.when(
      onSuccess: (response) => emit(
        state.copyWith(
          status: OrderStatus.awaitingPayment,
          paymentUrl: response.data.payment.paymentUrl,
        ),
      ),
      onError: (error) =>
          emit(state.copyWith(status: OrderStatus.failed, error: error)),
    );
  }

  void _onPaymentSuccess(_PaymentSuccess event, Emitter<OrderState> emit) {
    emit(
      state.copyWith(
        status: OrderStatus.onlinePaymentSuccess,
        order: state.order?.copyWith(orderNumber: event.orderNumber),
      ),
    );
  }

  void _onPaymentCancelled(_PaymentCancelled event, Emitter<OrderState> emit) {
    emit(state.copyWith(status: OrderStatus.paymentCancelled));
  }

  void _onReset(_Reset event, Emitter<OrderState> emit) {
    emit(const OrderState());
  }
}
