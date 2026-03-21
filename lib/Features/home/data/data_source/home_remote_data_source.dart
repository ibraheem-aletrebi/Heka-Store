
// import 'package:heka_store/core/services/remote/api_constants.dart';
// import 'package:heka_store/core/services/remote/api_service.dart';

// abstract class HomeRemoteDataSource {
//   Future<List<BannerModel>> getBanners();
//   Future<List<CategoryModel>> getCategories();
//   Future<ProductsResponseModel> getRecommendedProducts({int pageNumber, int pageSize});
//   Future<ProductsResponseModel> getFeaturedProducts({int pageNumber, int pageSize});
//   Future<List<BrandModel>> getBrands();
// }

// class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
//   final ApiService _apiService;

//   const HomeRemoteDataSourceImpl({required ApiService apiService})
//       : _apiService = apiService;

//   @override
//   Future<List<BannerModel>> getBanners() async {
//     final response = await _apiService.get(ApiConstants.banners);
//     final data = response.data['data'] as List;
//     return data.map((e) => BannerModel.fromJson(e)).toList();
//   }

//   @override
//   Future<List<CategoryModel>> getCategories() async {
//     final response = await _apiService.get(ApiConstants.categories);
//     final data = response.data['data'] as List;
//     return data.map((e) => CategoryModel.fromJson(e)).toList();
//   }

//   @override
//   Future<ProductsResponseModel> getRecommendedProducts({
//     int pageNumber = 1,
//     int pageSize = 10,
//   }) async {
//     final response = await _apiService.get(
//       ApiConstants.recommendedProducts,
//       queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
//     );
//     return ProductsResponseModel.fromJson(response.data['data']);
//   }

//   @override
//   Future<ProductsResponseModel> getFeaturedProducts({
//     int pageNumber = 1,
//     int pageSize = 10,
//   }) async {
//     final response = await _apiService.get(
//       ApiConstants.featuredProducts,
//       queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
//     );
//     return ProductsResponseModel.fromJson(response.data['data']);
//   }

//   @override
//   Future<List<BrandModel>> getBrands() async {
//     final response = await _apiService.get(ApiConstants.brands);
//     final data = response.data['data'] as List;
//     return data.map((e) => BrandModel.fromJson(e)).toList();
//   }
// }