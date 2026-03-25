
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetCartCountUseCase {
  final CartRepository _repository;
  const GetCartCountUseCase(this._repository);

  Future<ApiResult< int>> call() => _repository.getCartCount();
}