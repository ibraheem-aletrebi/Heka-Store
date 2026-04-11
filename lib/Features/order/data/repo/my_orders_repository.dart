import 'package:heka_store/Features/order/data/data_source/my_orders_local_data_source.dart';
import 'package:heka_store/Features/order/data/data_source/my_orders_remote_data_source.dart';
import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

abstract class MyOrdersRepository {
  Future<ApiResult<MyOrdersResponseModel>> getMyOrders({
    int pageNumber = 1,
    int pageSize = 10,
  });
}

class MyOrdersRepositoryImpl implements MyOrdersRepository {
  final MyOrdersRemoteDataSource _remote;
  final MyOrdersLocalDataSource _local;

  MyOrdersRepositoryImpl({
    required MyOrdersRemoteDataSource remote,
    required MyOrdersLocalDataSource local,
  })  : _remote = remote,
        _local = local;

  @override
  Future<ApiResult<MyOrdersResponseModel>> getMyOrders({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    try {
      final response = await _remote.getMyOrders(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      // cache only first page
      if (pageNumber == 1) {
        await _local.saveOrders(response.items);
      }
      return ApiResult.success(response);
    } catch (e) {
      // fallback to cache on first page only
      if (pageNumber == 1) {
        final cached = _local.getOrders();
        if (cached.isNotEmpty) {
          return ApiResult.success(MyOrdersResponseModel(
            items: cached,
            totalCount: cached.length,
            pageNumber: 1,
            pageSize: pageSize,
            totalPages: 1,
            hasPreviousPage: false,
            hasNextPage: false,
          ));
        }
      }
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }
}





class GetMyOrdersUseCase {
  final MyOrdersRepository _repo;

  GetMyOrdersUseCase(this._repo);

  Future<ApiResult<MyOrdersResponseModel>> call({
    int pageNumber = 1,
    int pageSize = 10,
  }) => _repo.getMyOrders(pageNumber: pageNumber, pageSize: pageSize);
}