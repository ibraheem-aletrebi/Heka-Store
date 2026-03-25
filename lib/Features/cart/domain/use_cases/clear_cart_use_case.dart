
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class ClearCartUseCase {
  final CartRepository _repository;
  const ClearCartUseCase(this._repository);

  Future<ApiResult<void>> call() => _repository.clearCart();
}