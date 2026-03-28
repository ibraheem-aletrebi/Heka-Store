import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class CartRemoteDataSource {
  Future<CartModel> getCart();
  Future<CartItemModel> addItem({
    required int productId,
    required int quantity,
  });
  Future<CartItemModel> updateItem({
    required int cartItemId,
    required int quantity,
  });
  Future<void> removeItem({required int cartItemId});
  Future<int> getCartCount();
  Future<void> clearCart();
  Future<ProductsResponseModel> getProductsYouMayLike({
    int pageNumber = 1,
    int pageSize = 10,
  });
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final ApiService _apiService;

  const CartRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<CartModel> getCart() async {
    final response = await _apiService.get(ApiConstants.cart);
    return CartModel.fromJson(response.data['data'] as Map<String, dynamic>);
  }

  @override
  Future<CartItemModel> addItem({
    required int productId,
    required int quantity,
  }) async {
    final response = await _apiService.post(
      ApiConstants.cartItems,
      data: {'productId': productId, 'quantity': quantity},
    );
    return CartItemModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<CartItemModel> updateItem({
    required int cartItemId,
    required int quantity,
  }) async {
    final response = await _apiService.put(
      ApiConstants.cartItem(cartItemId),
      data: {'quantity': quantity},
    );
    return CartItemModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<void> removeItem({required int cartItemId}) async {
    await _apiService.delete(ApiConstants.cartItem(cartItemId));
  }

  @override
  Future<int> getCartCount() async {
    final response = await _apiService.get(ApiConstants.cartCount);
    return response.data['data']['count'] as int;
  }

  @override
  Future<void> clearCart() async {
    await _apiService.delete(ApiConstants.cart);
  }

  @override
  Future<ProductsResponseModel> getProductsYouMayLike({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    final response = await _apiService.get(
      ApiConstants.productsYouMayLike,
      queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
    );
    return ProductsResponseModel.fromJson(response.data['data']);
  }
}
