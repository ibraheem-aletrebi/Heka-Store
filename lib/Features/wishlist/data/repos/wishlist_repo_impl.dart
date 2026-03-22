
import 'package:heka_store/Features/wishlist/data/data_source/wishlist_local_data_source.dart';
import 'package:heka_store/Features/wishlist/data/data_source/wishlist_remote_data_source.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/data/models/wishlist_response_model.dart';
import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

class WishlistRepoImpl implements WishlistRepo {
  final WishlistRemoteDataSource _remoteDataSource;
  final WishlistLocalDataSource _localDataSource;

  const WishlistRepoImpl({
    required WishlistRemoteDataSource remoteDataSource,
    required WishlistLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<ApiResult<WishlistResponseModel>> getWishlist({
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    try {
      final response = await _remoteDataSource.getWishlist(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      await _localDataSource.saveWishlist(response.items);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getWishlist();
      if (cached.isNotEmpty) {
        return ApiResult.success(WishlistResponseModel(
          items: cached,
          totalCount: cached.length,
          pageNumber: 1,
          pageSize: pageSize,
          totalPages: 1,
        ));
      }
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<WishlistItemModel>> addToWishlist(int productId) async {
    try {
      final response = await _remoteDataSource.addToWishlist(productId);
      await _localDataSource.addItem(response);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<void>> removeFromWishlist(int productId) async {
    try {
      await _remoteDataSource.removeFromWishlist(productId);
      await _localDataSource.removeItem(productId);
      return  ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  bool isInWishlist(int productId) {
    return _localDataSource.isInWishlist(productId);
  }
}