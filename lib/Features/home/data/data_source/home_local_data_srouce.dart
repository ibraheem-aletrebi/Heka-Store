import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data_hive.dart';
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class HomeLocalDataSource {
  Future<void> saveBanners(List<BannerModel> banners);
  List<BannerModel> getBanners();

  Future<void> saveCategories(CategoriesData categoriesData);  
  CategoriesData? getCachedCategories();    

  Future<void> saveUserProfile(UserProfile userProfileModel);   
  UserProfile? getUserProfile();               

  Future<void> saveRecommendedProducts(List<ProductModel> products);
  List<ProductModel> getRecommendedProducts();

  Future<void> saveFeaturedProducts(List<ProductModel> products);
  List<ProductModel> getFeaturedProducts();

  Future<void> saveBrands(List<BrandModel> brands);
  List<BrandModel> getBrands();

  Future<void> saveLastFetchTime();
  bool isCacheValid({int maxAgeMinutes = 20});
  Future<void> clearAll();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final LocalStorageService _localStorage;
  const HomeLocalDataSourceImpl({required LocalStorageService localStorage})
      : _localStorage = localStorage;


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


  @override
  Future<void> saveCategories(CategoriesData categoriesData) async {
    await _localStorage.setValue<CategoriesDataHive>(
      HiveBoxes.home,
      LocalStorageKeys.categories,
      CategoriesDataHive.fromDomain(categoriesData),
    );
  }

  @override
  CategoriesData? getCachedCategories() {
    final data = _localStorage.getValue<CategoriesDataHive>(
      HiveBoxes.home,
      LocalStorageKeys.categories,
    );
    return data?.toDomain();
  }

  

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
  
  @override
  UserProfile? getUserProfile() {
     final data = _localStorage.getValue<UserProfile>(
      HiveBoxes.data,
      LocalStorageKeys.userProfile,
    );
    return data;
  }
  
  @override
  Future<void> saveUserProfile(UserProfile userProfileModel) {
    return _localStorage.setValue<UserProfile>(
      HiveBoxes.data,
      LocalStorageKeys.userProfile,
      userProfileModel,
    );
  }
}