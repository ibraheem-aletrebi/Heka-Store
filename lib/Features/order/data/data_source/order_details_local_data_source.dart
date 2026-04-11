import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class OrderDetailsLocalDataSource {
  Future<void> saveOrderDetails(OrderDetailsModel order);
  OrderDetailsModel? getOrderDetails(int orderId);
}

class OrderDetailsLocalDataSourceImpl implements OrderDetailsLocalDataSource {
  final LocalStorageService _localStorage;

  const OrderDetailsLocalDataSourceImpl(
      {required LocalStorageService localStorage})
      : _localStorage = localStorage;

  @override
  Future<void> saveOrderDetails(OrderDetailsModel order) async {
    await _localStorage.setValue<OrderDetailsModel>(
      HiveBoxes.orders,
      LocalStorageKeys.orderDetails(order.id),
      order,
    );
  }

  @override
  OrderDetailsModel? getOrderDetails(int orderId) {
    return _localStorage.getValue<OrderDetailsModel>(
      HiveBoxes.orders,
      LocalStorageKeys.orderDetails(orderId),
    );
  }
}