import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/data/models/review_model.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class ProductRemoteDataSource {
  Future<ProductDetailsModel> getProductDetails(int id);
  Future<List<ProductModel>> getSimilarProducts(int categoryId);
  Future<ReviewsPage> getProductReviews(
    int productId, {
    int pageNumber = 1,
    int pageSize = 5,
  });
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ApiService _apiService;

  const ProductRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<ProductDetailsModel> getProductDetails(int id) async {
    final response = await _apiService.get(ApiConstants.productById(id));
    return ProductDetailsModel.fromJson(response.data['data']);
  }

  @override
  Future<List<ProductModel>> getSimilarProducts(int categoryId) async {
    final response = await _apiService.get(
      ApiConstants.search,
      queryParameters: {'categoryId': categoryId, 'pageSize': 10},
    );

    final data = response.data['data']['products'] as List;
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }

  @override
  Future<ReviewsPage> getProductReviews(
    int productId, {
    int pageNumber = 1,
    int pageSize = 5,
  }) async {
    final response = await _apiService.get(
      ApiConstants.productReviews(productId),
      queryParameters: {'pageNumber': pageNumber, 'pageSize': pageSize},
    );
    return ReviewsPage.fromJson(response.data['data']);
  }
}
