import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class PreviousViewedProductsDataSource {
  List<ProductModel> getProduct();
  Future<List<ProductModel>> addProduct(ProductModel productModel);
  Future<void> removeProduct(int productId);
  Future<void> clear();
}

class PreviousViewedProductsDataSourceImpl
    implements PreviousViewedProductsDataSource {
  final LocalStorageService _localStorage;

  const PreviousViewedProductsDataSourceImpl({
    required LocalStorageService localStorage,
  }) : _localStorage = localStorage;

  List<ProductModel> _readAll() {
    final raw = _localStorage.getValue<List>(
      HiveBoxes.previousViewedProducts,
      LocalStorageKeys.previousVisitedProducts,
    );
    if (raw == null || raw.isEmpty) return [];
    return raw
        .whereType<Map>()
        .map((e) => ProductModel.fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  Future<void> _saveAll(List<ProductModel> products) async {
    final encoded = products.map((p) => p.toJson()).toList();
    await _localStorage.setValue<List>(
      HiveBoxes.previousViewedProducts,
      LocalStorageKeys.previousVisitedProducts,
      encoded,
    );
  }

  @override
  List<ProductModel> getProduct() => _readAll();
  @override
  Future<List<ProductModel>> addProduct(ProductModel productModel) async {
    final products = _readAll();
    final alreadyExists = products.any((p) => p.id == productModel.id);

    if (!alreadyExists) {
      products.add(productModel);
      await _saveAll(products);
    }

    return products;
  }
    @override
  Future<void> removeProduct(int productId) async {
    final products = _readAll();
    final updated = products.where((p) => p.id != productId).toList();
    await _saveAll(updated);
  }

  @override
  Future<void> clear() async {
    await _localStorage.remove(
      HiveBoxes.previousViewedProducts,
      LocalStorageKeys.previousVisitedProducts,
    );
  }
}