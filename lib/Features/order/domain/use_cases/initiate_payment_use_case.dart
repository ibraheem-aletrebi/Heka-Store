import 'package:heka_store/Features/order/data/models/initiate_payment_response_model.dart';
import 'package:heka_store/Features/order/data/repo/order_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class InitiatePaymentUseCase {
  final OrderRepository _repo;
  InitiatePaymentUseCase(this._repo);

  Future<ApiResult<InitiatePaymentResponseModel>> call(int orderId) =>
      _repo.initiatePayment(orderId);
}
