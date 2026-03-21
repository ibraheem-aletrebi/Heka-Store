
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class HomeLocalDataSource {
  // ─── Banners ──────────────────────────────────────
  Future<void> saveBanners(List<BannerModel> banners);
  List<BannerModel> getBanners();

  // ─── Categories ───────────────────────────────────
  Future<void> saveCategories(List<CategoryModel> categories);
  List<CategoryModel> getCategories();

  // ─── Recommended Products ─────────────────────────
  Future<void> saveRecommendedProducts(List<ProductModel> products);
  List<ProductModel> getRecommendedProducts();

  // ─── Featured Products ────────────────────────────
  Future<void> saveFeaturedProducts(List<ProductModel> products);
  List<ProductModel> getFeaturedProducts();

  // ─── Brands ───────────────────────────────────────
  Future<void> saveBrands(List<BrandModel> brands);
  List<BrandModel> getBrands();

  // ─── Cache ────────────────────────────────────────
  Future<void> saveLastFetchTime();
  bool isCacheValid({int maxAgeMinutes = 20});
  Future<void> clearAll();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final LocalStorageService _localStorage;

  const HomeLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;

  // ─── Banners ──────────────────────────────────────

  @override
  Future<void> saveBanners(List<BannerModel> banners) async {
    await _localStorage.setValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.banners,
      banners,
    );
  }

  @override
  List<BannerModel> getBanners() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.banners,
    );
    return data?.cast<BannerModel>() ?? [];
  }

  // ─── Categories ───────────────────────────────────

  @override
  Future<void> saveCategories(List<CategoryModel> categories) async {
    await _localStorage.setValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.categories,
      categories,
    );
  }

  @override
  List<CategoryModel> getCategories() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.categories,
    );
    return data?.cast<CategoryModel>() ?? [];
  }

  // ─── Recommended Products ─────────────────────────

  @override
  Future<void> saveRecommendedProducts(List<ProductModel> products) async {
    await _localStorage.setValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.recommendedProducts,
      products,
    );
  }

  @override
  List<ProductModel> getRecommendedProducts() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.recommendedProducts,
    );
    return data?.cast<ProductModel>() ?? [];
  }

  // ─── Featured Products ────────────────────────────

  @override
  Future<void> saveFeaturedProducts(List<ProductModel> products) async {
    await _localStorage.setValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.featuredProducts,
      products,
    );
  }

  @override
  List<ProductModel> getFeaturedProducts() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.featuredProducts,
    );
    return data?.cast<ProductModel>() ?? [];
  }

  // ─── Brands ───────────────────────────────────────

  @override
  Future<void> saveBrands(List<BrandModel> brands) async {
    await _localStorage.setValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.brands,
      brands,
    );
  }

  @override
  List<BrandModel> getBrands() {
    final data = _localStorage.getValue<List>(
      HiveBoxes.home,
      LocalStorageKeys.brands,
    );
    return data?.cast<BrandModel>() ?? [];
  }

  // ─── Cache ────────────────────────────────────────

  @override
  Future<void> saveLastFetchTime() async {
    await _localStorage.setValue<int>(
      HiveBoxes.home,
      LocalStorageKeys.homeLastFetch,
      DateTime.now().millisecondsSinceEpoch,
    );
  }

  @override
  bool isCacheValid({int maxAgeMinutes = 20}) {
    final lastFetch = _localStorage.getValue<int>(
      HiveBoxes.home,
      LocalStorageKeys.homeLastFetch,
    );
    if (lastFetch == null) return false;
    final diff = DateTime.now()
        .difference(DateTime.fromMillisecondsSinceEpoch(lastFetch))
        .inMinutes;
    return diff < maxAgeMinutes;
  }

  @override
  Future<void> clearAll() async {
    await _localStorage.clearBox(HiveBoxes.home);
  }
}