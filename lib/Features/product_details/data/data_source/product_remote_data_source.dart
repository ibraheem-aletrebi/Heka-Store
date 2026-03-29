import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class ProductRemoteDataSource {
  Future<ProductDetailsModel> getProductDetails(int id);
  Future<List<ProductModel>> getSimilarProducts(int categoryId);
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
  Future<List<ProductModel>> getSimilarProducts(int categoryId, {int pageSize = 10}) async {
    final response = await _apiService.get(
      ApiConstants.search,
      queryParameters: {'categoryId': categoryId, 'pageSize': pageSize},
    );
    final data = response.data['data'] as List;
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }
}