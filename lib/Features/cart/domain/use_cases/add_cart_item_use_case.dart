import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class AddCartItemUseCase {
  final CartRepository _repository;
  const AddCartItemUseCase(this._repository);

  Future<ApiResult<CartItemModel>> call({
    required int productId,
    required int quantity,
    List<int>? selectedVariantIds,  // ✅ added
  }) =>
      _repository.addItem(
        productId: productId,
        quantity: quantity,
        selectedVariantIds: selectedVariantIds,  // ✅ forwarded
      );
}