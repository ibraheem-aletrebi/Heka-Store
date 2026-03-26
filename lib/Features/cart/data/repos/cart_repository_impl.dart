import 'package:heka_store/Features/cart/data/data_source/cart_local_data_source.dart';
import 'package:heka_store/Features/cart/data/data_source/cart_remote_data_source.dart';
import 'package:heka_store/Features/cart/data/models/cart_item_model.dart';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource _remote;
  final CartLocalDataSource _local;

  const CartRepositoryImpl({
    required CartRemoteDataSource remote,
    required CartLocalDataSource local,
  }) : _remote = remote,
       _local = local;

  @override
  Future<ApiResult<CartModel>> getCart() async {
    try {
      final cart = await _remote.getCart();
      await _local.saveCart(cart);
      return ApiResult.success(cart);
    } catch (e) {
      final cached = _local.getCart();
      if (cached != null) return ApiResult.success(cached);
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<CartItemModel>> addItem({
    required int productId,
    required int quantity,
  }) async {
    try {
      final item = await _remote.addItem(
        productId: productId,
        quantity: quantity,
      );
      return ApiResult.success(item);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<CartItemModel>> updateItem({
    required int cartItemId,
    required int quantity,
  }) async {
    try {
      final item = await _remote.updateItem(
        cartItemId: cartItemId,
        quantity: quantity,
      );
      return ApiResult.success(item);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<void>> removeItem({required int cartItemId}) async {
    try {
      await _remote.removeItem(cartItemId: cartItemId);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<int>> getCartCount() async {
    try {
      final count = await _remote.getCartCount();
      await _local.saveCartCount(count);
      return ApiResult.success(count);
    } catch (e) {
      final cached = _local.getCartCount();
      if (cached != null) return ApiResult.success(cached);
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<void>> clearCart() async {
    try {
      await _remote.clearCart();
      await _local.clearCart();
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<ProductsResponseModel>> getProductsYouMayLike({
    required int pageNumber,
    required int pageSize,
  }) async {
    try {
      final response = await _remote.getProductsYouMayLike(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      await _local.saveProductsYouMayLike(response.products);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _local.getProductsYouMayLike();
      if (cached.isNotEmpty) {
        return ApiResult.success(
          ProductsResponseModel(
            products: cached,
            hasNextPage: false,
            pageNumber: pageNumber,
            totalCount: cached.length,
            pageSize: cached.length,
            totalPages: 1,
            hasPreviousPage: false,
          ),
        );
      }
      return ApiResult.error(e);
    }
  }
}
