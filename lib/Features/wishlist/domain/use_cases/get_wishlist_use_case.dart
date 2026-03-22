import 'package:heka_store/Features/wishlist/data/models/wishlist_response_model.dart';
import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetWishlistUseCase {
  final WishlistRepo _repo;
  const GetWishlistUseCase({required WishlistRepo repo}) : _repo = repo;

  Future<ApiResult<WishlistResponseModel>> call({
    int pageNumber = 1,
    int pageSize = 20,
  }) => _repo.getWishlist(pageNumber: pageNumber, pageSize: pageSize);
}