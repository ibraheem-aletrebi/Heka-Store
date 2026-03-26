import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class CartRepository {
  Future<ApiResult<CartModel>> getCart();
  Future<ApiResult<CartItemModel>> addItem({
    required int productId,
    required int quantity,
  });
  Future<ApiResult<CartItemModel>> updateItem({
    required int cartItemId,
    required int quantity,
  });
  Future<ApiResult<void>> removeItem({required int cartItemId});
  Future<ApiResult<int>> getCartCount();
  Future<ApiResult<void>> clearCart();

  Future<ApiResult<ProductsResponseModel>> getProductsYouMayLike({ required int pageNumber, required int pageSize}) ;
}
