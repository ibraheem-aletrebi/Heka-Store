import 'package:heka_store/Features/wishlist/domain/repos/wishlist_repo.dart';

class IsInWishlistUseCase {
  final WishlistRepo _repo;
  const IsInWishlistUseCase({required WishlistRepo repo}) : _repo = repo;

  bool call(int productId) => _repo.isInWishlist(productId);
}