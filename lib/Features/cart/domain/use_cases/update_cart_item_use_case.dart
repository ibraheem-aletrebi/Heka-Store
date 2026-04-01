import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class UpdateCartItemUseCase {
  final CartRepository _repository;
  const UpdateCartItemUseCase(this._repository);

  Future<ApiResult<CartItemModel>> call({
    required int cartItemId,
    required int quantity,
    List<int>? selectedVariantIds, // ✅ added
  }) =>
      _repository.updateItem(
        cartItemId: cartItemId,
        quantity: quantity,
        selectedVariantIds: selectedVariantIds, // ✅ forwarded
      );
}