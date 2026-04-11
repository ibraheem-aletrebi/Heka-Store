import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/Features/order/data/repo/order_details_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetOrderDetailsUseCase {
  final OrderDetailsRepo _repo;

  GetOrderDetailsUseCase(this._repo);

  Future<ApiResult<OrderDetailsModel>> call(int orderId) =>
      _repo.getOrderDetails(orderId);
}