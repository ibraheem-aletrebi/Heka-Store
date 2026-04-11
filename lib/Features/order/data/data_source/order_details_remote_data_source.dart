import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class OrderDetailsRemoteDataSource {
  Future<OrderDetailsModel> getOrderDetails(int orderId);
}

class OrderDetailsRemoteDataSourceImpl
    implements OrderDetailsRemoteDataSource {
  final ApiService _apiService;

  OrderDetailsRemoteDataSourceImpl(this._apiService);

  @override
  Future<OrderDetailsModel> getOrderDetails(int orderId) async {
    final response = await _apiService.get('/api/Orders/$orderId');
    return OrderDetailsModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    );
  }
}