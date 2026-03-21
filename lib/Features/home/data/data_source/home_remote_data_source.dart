

import 'package:heka_store/Features/home/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_service.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';

abstract class HomeRemoteDataSource {
  Future<ProductsResponseModel> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 20,
  });
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService _apiService;

  const HomeRemoteDataSourceImpl({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<ProductsResponseModel> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    final response = await _apiService.get(
      ApiConstants.products,
      queryParameters: {
        'pageNumber': pageNumber,
        'pageSize': pageSize,
      },
    );
    return ProductsResponseModel.fromJson(response.data['data']);
  }
}
