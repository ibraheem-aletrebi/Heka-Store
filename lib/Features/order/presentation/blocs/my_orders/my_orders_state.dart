part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  const factory MyOrdersState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isRefreshing,
    @Default([]) List<MyOrderModel> orders,
    @Default(1) int currentPage,
    @Default(false) bool hasNextPage,
    ApiErrorModel? error,
  }) = _MyOrdersState;

  const MyOrdersState._();

  List<MyOrderModel> get ongoingOrders =>
      orders.where((o) => o.isOngoing).toList();

  List<MyOrderModel> get completedOrders =>
      orders.where((o) => o.isCompleted).toList();
}