import 'package:heka_store/Features/order/data/models/create_order_request_model.dart';
import 'package:heka_store/Features/order/data/models/order_model.dart';
import 'package:heka_store/Features/order/data/repo/order_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class CreateOrderUseCase {
  final OrderRepository _repo;
  CreateOrderUseCase(this._repo);

  Future<ApiResult<OrderModel>> call(CreateOrderRequestModel request) =>
      _repo.createOrder(request);
}
