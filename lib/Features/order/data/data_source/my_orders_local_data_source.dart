import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class MyOrdersLocalDataSource {
  Future<void> saveOrders(List<MyOrderModel> orders);
  List<MyOrderModel> getOrders();
  Future<void> clearOrders();
}

class MyOrdersLocalDataSourceImpl implements MyOrdersLocalDataSource {
  final LocalStorageService _localStorage;

  const MyOrdersLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  @override
  Future<void> saveOrders(List<MyOrderModel> orders) async {
    await _localStorage.setValue<List>(
      HiveBoxes.orders,
      LocalStorageKeys.myOrders,
      orders,
    );
  }

  @override
  List<MyOrderModel> getOrders() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.orders,
      LocalStorageKeys.myOrders,
    );
    return data?.cast<MyOrderModel>() ?? [];
  }

  @override
  Future<void> clearOrders() async {
    await _localStorage.clearBox(HiveBoxes.orders);
  }
}