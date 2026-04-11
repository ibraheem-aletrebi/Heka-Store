import 'package:heka_store/Features/order/data/data_source/order_details_local_data_source.dart';
import 'package:heka_store/Features/order/data/data_source/order_details_remote_data_source.dart';
import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

abstract class OrderDetailsRepo {
  Future<ApiResult<OrderDetailsModel>> getOrderDetails(int orderId);
}

class OrderDetailsRepoImpl implements OrderDetailsRepo {
  final OrderDetailsRemoteDataSource _remote;
  final OrderDetailsLocalDataSource _local;

  OrderDetailsRepoImpl({
    required OrderDetailsRemoteDataSource remote,
    required OrderDetailsLocalDataSource local,
  })  : _remote = remote,
        _local = local;

  @override
  Future<ApiResult<OrderDetailsModel>> getOrderDetails(int orderId) async {
    try {
      final response = await _remote.getOrderDetails(orderId);
      await _local.saveOrderDetails(response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _local.getOrderDetails(orderId);
      if (cached != null) return ApiResult.success(cached);
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }
}