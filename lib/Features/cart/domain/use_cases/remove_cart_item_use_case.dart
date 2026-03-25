
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class RemoveCartItemUseCase {
  final CartRepository _repository;
  const RemoveCartItemUseCase(this._repository);

  Future<ApiResult<void>> call({required int cartItemId}) =>
      _repository.removeItem(cartItemId: cartItemId);
}