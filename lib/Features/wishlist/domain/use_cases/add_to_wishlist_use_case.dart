import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class AddToWishlistUseCase {
  final WishlistRepo _repo;
  const AddToWishlistUseCase({required WishlistRepo repo}) : _repo = repo;

  Future<ApiResult<WishlistItemModel>> call(int productId) =>
      _repo.addToWishlist(productId);
}