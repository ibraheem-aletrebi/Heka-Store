import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class MyOrdersRemoteDataSource {
  Future<ApiResult<List<MyOrderModel>>> getMyOrders();
}

class MyOrdersRemoteDataSourceImpl implements MyOrdersRemoteDataSource {
  final ApiService _apiService;
  MyOrdersRemoteDataSourceImpl(this._apiService);

  @override
  Future<ApiResult<List<MyOrderModel>>> getMyOrders() async {
    try {
      final response = await _apiService.get('/api/Orders/my-orders');

      // Response: { "success": true, "data": [ ...orders... ] }
      final list = response.data['data'] as List<dynamic>;
      final orders = list
          .map((e) => MyOrderModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return ApiResult.success(orders);
    } catch (e) {
      return ApiResult.error(e);
    }
  }
}