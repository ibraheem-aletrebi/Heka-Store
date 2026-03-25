import 'package:dio/dio.dart';
import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';

abstract class CartRemoteDataSource {
  Future<CartModel> getCart();
  Future<CartItemModel> addItem({required int productId, required int quantity});
  Future<CartItemModel> updateItem({required int cartItemId, required int quantity});
  Future<void> removeItem({required int cartItemId});
  Future<int> getCartCount();
  Future<void> clearCart();
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final Dio _dio;

  const CartRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<CartModel> getCart() async {
    final response = await _dio.get(ApiConstants.cart);
    return CartModel.fromJson(response.data['data'] as Map<String, dynamic>);
  }

  @override
  Future<CartItemModel> addItem({
    required int productId,
    required int quantity,
  }) async {
    final response = await _dio.post(
      ApiConstants.cartItems,
      data: {'productId': productId, 'quantity': quantity},
    );
    return CartItemModel.fromJson(response.data['data'] as Map<String, dynamic>);
  }

  @override
  Future<CartItemModel> updateItem({
    required int cartItemId,
    required int quantity,
  }) async {
    final response = await _dio.put(
      ApiConstants.cartItem(cartItemId),
      data: {'quantity': quantity},
    );
    return CartItemModel.fromJson(response.data['data'] as Map<String, dynamic>);
  }

  @override
  Future<void> removeItem({required int cartItemId}) async {
     await _dio.delete(ApiConstants.cartItem(cartItemId));
    
  }

  @override
  Future<int> getCartCount() async {
    final response = await _dio.get(ApiConstants.cartCount);
    return response.data['data']['count'] as int;
  }

  @override
  Future<void> clearCart() async {
     await _dio.delete(ApiConstants.cart);
  }

 
}