import 'package:heka_store/Features/order/data/data_source/order_remote_data_source.dart';
import 'package:heka_store/Features/order/data/models/create_order_request_model.dart';
import 'package:heka_store/Features/order/data/models/initiate_payment_response_model.dart';
import 'package:heka_store/Features/order/data/models/order_model.dart';
import 'package:heka_store/Features/order/data/models/order_tracking.dart';
import 'package:heka_store/Features/order/data/models/review_request_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class OrderRepository {
  Future<ApiResult<OrderModel>> createOrder(CreateOrderRequestModel request);
  Future<ApiResult<InitiatePaymentResponseModel>> initiatePayment(int orderId);
  Future<ApiResult<OrderTracking>> trackOrder(String orderNumber);
  Future<ApiResult<void>> submitReview({required ReviewRequestModel review});
}

class OrderRepositoryImpl implements OrderRepository {
  final OrderRemoteDataSource _remote;

  OrderRepositoryImpl(this._remote);

  @override
  Future<ApiResult<OrderModel>> createOrder(CreateOrderRequestModel request) =>
      _remote.createOrder(request);

  @override
  Future<ApiResult<InitiatePaymentResponseModel>> initiatePayment(
    int orderId,
  ) => _remote.initiatePayment(orderId);
  
  @override
  Future<ApiResult<OrderTracking>> trackOrder(String orderNumber) async{
    return _remote.trackOrder(orderNumber);
  }
  
  @override
  Future<ApiResult<void>> submitReview({required ReviewRequestModel review})async {
    return _remote.submitReview(review: review);
  }
}
