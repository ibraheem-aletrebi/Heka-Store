import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/data/models/review_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class ProductLocalDataSource {
  Future<void> saveProductDetails(ProductDetailsModel product);
  ProductDetailsModel? getProductDetails(int id);
  Future<void> clearProductDetails(int id);

  Future<void> saveSimilarProducts(int categoryId, List<ProductModel> products);
  List<ProductModel> getSimilarProducts(int categoryId);
  Future<void> clearSimilarProducts(int categoryId);

  Future<void> saveProductReviews(int productId, List<ReviewModel> reviews);
  List<ReviewModel> getProductReviews(int productId);
  Future<void> clearProductReviews(int productId);
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  final LocalStorageService _localStorage;

  const ProductLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  // ── Product Details ────────────────────────────────────────────────────────

  @override
  Future<void> saveProductDetails(ProductDetailsModel product) async {
    await _localStorage.setValue<ProductDetailsModel>(
      HiveBoxes.data,
      LocalStorageKeys.productDetails(product.id),
      product,
    );
  }

  @override
  ProductDetailsModel? getProductDetails(int id) {
    return _localStorage.getValue<ProductDetailsModel>(
      HiveBoxes.data,
      LocalStorageKeys.productDetails(id),
    );
  }

  @override
  Future<void> clearProductDetails(int id) async {
    await _localStorage.remove(
      HiveBoxes.data,
      LocalStorageKeys.productDetails(id),
    );
  }

  // ── Similar Products ───────────────────────────────────────────────────────

  @override
  Future<void> saveSimilarProducts(
    int categoryId,
    List<ProductModel> products,
  ) async {
    await _localStorage.setValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.similarProducts(categoryId),
      products,
    );
  }

  @override
  List<ProductModel> getSimilarProducts(int categoryId) {
    final data = _localStorage.getValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.similarProducts(categoryId),
    );
    if (data == null) return [];
    return data.cast<ProductModel>();
  }

  @override
  Future<void> clearSimilarProducts(int categoryId) async {
    await _localStorage.remove(
      HiveBoxes.data,
      LocalStorageKeys.similarProducts(categoryId),
    );
  }

  // ── Product Reviews ────────────────────────────────────────────────────────

  @override
  Future<void> saveProductReviews(
    int productId,
    List<ReviewModel> reviews,
  ) async {
    await _localStorage.setValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.productReviews(productId),
      reviews,
    );
  }

  @override
  List<ReviewModel> getProductReviews(int productId) {
    final data = _localStorage.getValue<List>(
      HiveBoxes.data,
      LocalStorageKeys.productReviews(productId),
    );
    if (data == null) return [];
    return data.cast<ReviewModel>();
  }

  @override
  Future<void> clearProductReviews(int productId) async {
    await _localStorage.remove(
      HiveBoxes.data,
      LocalStorageKeys.productReviews(productId),
    );
  }
}