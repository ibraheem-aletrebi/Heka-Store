import 'dart:convert';
import 'package:heka_store/Features/cart/data/models/cart_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class CartLocalDataSource {
  CartModel? getCart();
  Future<void> saveCart(CartModel cart);
  Future<void> clearCart();
  int? getCartCount();
  Future<void> saveCartCount(int count);
}

class CartLocalDataSourceImpl implements CartLocalDataSource {
  final LocalStorageService _localStorage;

  const CartLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  @override
  CartModel? getCart() {
    final raw = _localStorage.getValue<String>(
      HiveBoxes.cart,
      LocalStorageKeys.cart,
    );
    if (raw == null) return null;
    return CartModel.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }

  @override
  Future<void> saveCart(CartModel cart) async {
    await _localStorage.setValue<String>(
      HiveBoxes.cart,
      LocalStorageKeys.cart,
      jsonEncode(cart.toJson()),
    );
  }

  @override
  Future<void> clearCart() async {
    await _localStorage.remove(HiveBoxes.cart, LocalStorageKeys.cart);
  }

  @override
  int? getCartCount() {
    return _localStorage.getValue<int>(
      HiveBoxes.cart,
      LocalStorageKeys.cartCount,
    );
  }

  @override
  Future<void> saveCartCount(int count) async {
    await _localStorage.setValue<int>(
      HiveBoxes.cart,
      LocalStorageKeys.cartCount,
      count,
    );
  }
}