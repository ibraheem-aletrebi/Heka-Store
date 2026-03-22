
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class WishlistRepo {
  Future<ApiResult<WishlistResponseModel>> getWishlist({
    int pageNumber = 1,
    int pageSize = 20,
  });
  Future<ApiResult<WishlistItemModel>> addToWishlist(int productId);
  Future<ApiResult<void>> removeFromWishlist(int productId);
  bool isInWishlist(int productId);
}