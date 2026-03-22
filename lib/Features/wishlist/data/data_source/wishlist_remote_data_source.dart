
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_response_model.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class WishlistRemoteDataSource {
  Future<WishlistResponseModel> getWishlist({int pageNumber, int pageSize});
  Future<WishlistItemModel> addToWishlist(int productId);
  Future<void> removeFromWishlist(int productId);
  Future<void> clearWishlist();
}

class WishlistRemoteDataSourceImpl implements WishlistRemoteDataSource {
  final ApiService _apiService;

  const WishlistRemoteDataSourceImpl({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<WishlistResponseModel> getWishlist({
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    final response = await _apiService.get(
      ApiConstants.wishlist,
      queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
    );
    return WishlistResponseModel.fromJson(response.data['data']);
  }

  @override
  Future<WishlistItemModel> addToWishlist(int productId) async {
    final response = await _apiService.post(
      ApiConstants.wishlist,
      data: {'productId': productId},
    );
    return WishlistItemModel.fromJson(response.data['data']);
  }

  @override
  Future<void> removeFromWishlist(int productId) async {
    await _apiService.delete(ApiConstants.wishlistItem(productId));
  }
  
  @override
  Future<void> clearWishlist() {
    return _apiService.delete(ApiConstants.wishlist);
  }
}