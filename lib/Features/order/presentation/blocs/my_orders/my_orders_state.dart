part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  const factory MyOrdersState({
    @Default(false) bool isLoading,
    @Default([]) List<MyOrderModel> orders,
    ApiErrorModel? error,
  }) = _MyOrdersState;

  const MyOrdersState._();

  List<MyOrderModel> get ongoingOrders =>
      orders.where((o) => o.isOngoing).toList();

  List<MyOrderModel> get completedOrders =>
      orders.where((o) => o.isCompleted).toList();
}