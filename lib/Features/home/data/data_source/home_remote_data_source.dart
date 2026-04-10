import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/paginated_result.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/models/user_profile/user_profile_response.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

import 'package:heka_store/Features/home/data/models/category/categories_data.dart'; // ← with pagination

abstract class HomeRemoteDataSource {
  Future<List<BannerModel>> getBanners();
  Future<CategoriesData> getCategories({int pageNumber = 1, int pageSize = 20});

  Future<UserProfileResponse> getUserProfile();
  Future<ProductsResponseModel> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });
  Future<ProductsResponseModel> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });
  Future<PaginatedResult<BrandModel>> getBrands({
    int pageNumber = 1,
    int pageSize = 10,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService _apiService;
  const HomeRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<List<BannerModel>> getBanners() async {
    final response = await _apiService.get(ApiConstants.banners);
    final data = response.data['data'] as List;
    return data
        .map((e) => BannerModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<CategoriesData> getCategories({
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    final response = await _apiService.get(
      ApiConstants.categories,
      queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
    );
    return CategoriesData.fromJson(
      response.data['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<ProductsResponseModel> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    final response = await _apiService.get(
      ApiConstants.recommendedProducts,
      queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
    );
    return ProductsResponseModel.fromJson(response.data['data']);
  }

  @override
  Future<ProductsResponseModel> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    final response = await _apiService.get(
      ApiConstants.featuredProducts,
      queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
    );
    return ProductsResponseModel.fromJson(response.data['data']);
  }

@override
Future<PaginatedResult<BrandModel>> getBrands({
  int pageNumber = 1,
  int pageSize = 10,
}) async {
  final response = await _apiService.get(
    ApiConstants.brands,
    queryParameters: {
      'pageNumber': pageNumber,
      'pageSize': pageSize,
    },
  );
  final data = response.data['data'] as Map<String, dynamic>;
  return PaginatedResult.fromJson(data, BrandModel.fromJson);
}

  @override
  Future<UserProfileResponse> getUserProfile() async {
    final response = await _apiService.get(ApiConstants.userProfile);
    return UserProfileResponse.fromJson(response.data as Map<String, dynamic>);
  }
}
