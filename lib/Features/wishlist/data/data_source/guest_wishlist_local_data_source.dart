// guest_wishlist_local_data_source.dart

import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class GuestWishlistLocalDataSource {
  List<int> getProductIds();
  Future<void> addProductId(int productId);
  Future<void> removeProductId(int productId);
  bool contains(int productId);
  Future<void> clear();
}

class GuestWishlistLocalDataSourceImpl implements GuestWishlistLocalDataSource {
  final LocalStorageService _localStorage;

  const GuestWishlistLocalDataSourceImpl({
    required LocalStorageService localStorage,
  }) : _localStorage = localStorage;

  @override
  List<int> getProductIds() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.guestWishlist,
      LocalStorageKeys.guestWishlistIds,
    );
    return data?.cast<int>() ?? [];
  }

  @override
  Future<void> addProductId(int productId) async {
    final ids = getProductIds();
    if (!ids.contains(productId)) {
      await _localStorage.setValue<List>(
        HiveBoxes.guestWishlist,
        LocalStorageKeys.guestWishlistIds,
        [...ids, productId],
      );
    }
  }

  @override
  Future<void> removeProductId(int productId) async {
    final ids = getProductIds();
    await _localStorage.setValue<List>(
      HiveBoxes.guestWishlist,
      LocalStorageKeys.guestWishlistIds,
      ids.where((id) => id != productId).toList(),
    );
  }

  @override
  bool contains(int productId) => getProductIds().contains(productId);

  @override
  Future<void> clear() async {
    await _localStorage.remove(
      HiveBoxes.guestWishlist,
      LocalStorageKeys.guestWishlistIds,
    );
  }
}