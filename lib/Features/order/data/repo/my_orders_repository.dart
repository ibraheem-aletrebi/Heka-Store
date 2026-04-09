
import 'package:heka_store/Features/order/data/data_source/my_orders_remote_data_source.dart';
import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

// ── Repository ────────────────────────────────────────────────────────────────
abstract class MyOrdersRepository {
  Future<ApiResult<List<MyOrderModel>>> getMyOrders();
}

class MyOrdersRepositoryImpl implements MyOrdersRepository {
  final MyOrdersRemoteDataSource _remote;
  MyOrdersRepositoryImpl(this._remote);

  @override
  Future<ApiResult<List<MyOrderModel>>> getMyOrders() =>
      _remote.getMyOrders();
}

// ── Use case ──────────────────────────────────────────────────────────────────
class GetMyOrdersUseCase {
  final MyOrdersRepository _repo;
  GetMyOrdersUseCase(this._repo);

  Future<ApiResult<List<MyOrderModel>>> call() => _repo.getMyOrders();
}