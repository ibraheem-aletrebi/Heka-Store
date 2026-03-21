
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class HomeRemoteDataSource {
  Future<List<BannerModel>> getBanners();
  Future<List<CategoryModel>> getCategories();
  Future<ProductsResponseModel> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });
  Future<ProductsResponseModel> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });
  Future<List<BrandModel>> getBrands();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService _apiService;

  const HomeRemoteDataSourceImpl({required ApiService apiService})
      : _apiService = apiService;

  // ─── Banners ──────────────────────────────────────────────────────────────

  @override
  Future<List<BannerModel>> getBanners() async {
    final response = await _apiService.get(ApiConstants.banners);
    final data = response.data['data'] as List;
    return data
        .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // ─── Categories ───────────────────────────────────────────────────────────

  @override
  Future<List<CategoryModel>> getCategories() async {
    final response = await _apiService.get(ApiConstants.categories);
    final data = response.data['data'] as List;
    return data
        .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  // ─── Recommended Products ─────────────────────────────────────────────────

  @override
  Future<ProductsResponseModel> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    final response = await _apiService.get(
      ApiConstants.recommendedProducts,
      queryParameters: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
    );
    return ProductsResponseModel.fromJson(response.data['data']);
  }

  // ─── Featured Products ────────────────────────────────────────────────────

  @override
  Future<ProductsResponseModel> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    final response = await _apiService.get(
      ApiConstants.featuredProducts,
      queryParameters: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
    );
    return ProductsResponseModel.fromJson(response.data['data']);
  }

  // ─── Brands ───────────────────────────────────────────────────────────────

  @override
  Future<List<BrandModel>> getBrands() async {
    final response = await _apiService.get(ApiConstants.brands);
    final data = response.data['data'] as List;
    return data
        .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}