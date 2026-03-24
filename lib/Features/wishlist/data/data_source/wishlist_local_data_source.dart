// wishlist_local_data_source.dart

import 'package:heka_store/Features/wishlist/data/models/wishlist_item_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class WishlistLocalDataSource {
  Future<void> saveWishlist(List<WishlistItemModel> items);
  List<WishlistItemModel> getWishlist();
  Future<void> addItem(WishlistItemModel item);
  Future<void> removeItem(int productId);
  bool isInWishlist(int productId);
  Future<void> clearWishlist();
}

class WishlistLocalDataSourceImpl implements WishlistLocalDataSource {
  final LocalStorageService _localStorage;

  const WishlistLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  @override
  Future<void> saveWishlist(List<WishlistItemModel> items) async {
    await _localStorage.setValue<List>(
      HiveBoxes.wishlist,
      LocalStorageKeys.wishlist,
      items,
    );
  }

  @override
  List<WishlistItemModel> getWishlist() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.wishlist,
      LocalStorageKeys.wishlist,
    );
    return data?.cast<WishlistItemModel>() ?? [];
  }

  @override
  Future<void> addItem(WishlistItemModel item) async {
    final items = getWishlist();
    if (!items.any((e) => e.productId == item.productId)) {
      await saveWishlist([...items, item]);
    }
  }

  @override
  Future<void> removeItem(int productId) async {
    final items = getWishlist();
    await saveWishlist(
      items.where((e) => e.productId != productId).toList(),
    );
  }

  @override
  bool isInWishlist(int productId) {
    return getWishlist().any((e) => e.productId == productId);
  }

  @override
  Future<void> clearWishlist() async {
    await _localStorage.clearBox(HiveBoxes.wishlist);
  }
}