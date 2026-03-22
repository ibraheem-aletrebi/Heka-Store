import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class RemoveFromWishlistUseCase {
  final WishlistRepo _repo;
  const RemoveFromWishlistUseCase({required WishlistRepo repo}) : _repo = repo;

  Future<ApiResult<void>> call(int productId) =>
      _repo.removeFromWishlist(productId);
}
