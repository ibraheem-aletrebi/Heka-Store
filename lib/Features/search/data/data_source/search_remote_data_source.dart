
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/services/remote/api_service.dart';
import '../../domain/entities/search_filter.dart';

abstract class SearchRemoteDataSource {
  Future<List<ProductModel>> searchProducts(SearchFilter filter);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  final ApiService _apiService;

  const SearchRemoteDataSourceImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<List<ProductModel>> searchProducts(SearchFilter filter) async {
    final response = await _apiService.get(
      '/api/Products/search',
      queryParameters: filter.toQueryParams(),
    );

    final data = response.data as Map<String, dynamic>;

    if (data['success'] == true) {
      final products = data['data']['products'] as List<dynamic>;
      return products
          .map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList();
    }

    throw Exception(data['message'] ?? 'Search failed');
  }
}// features/search/data/datasources/search_remote_datasource.dart


