import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class MyOrdersRemoteDataSource {
  Future<MyOrdersResponseModel> getMyOrders({
    int pageNumber = 1,
    int pageSize = 10,
  });
}

class MyOrdersRemoteDataSourceImpl implements MyOrdersRemoteDataSource {
  final ApiService _apiService;

  MyOrdersRemoteDataSourceImpl(this._apiService);

  @override
  Future<MyOrdersResponseModel> getMyOrders({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    final response = await _apiService.get(
      '/api/Orders/my-orders',
      queryParameters: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
    );
    return MyOrdersResponseModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    );
  }
}