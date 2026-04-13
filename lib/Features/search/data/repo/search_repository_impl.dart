// features/search/data/repositories/search_repository_impl.dart
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/search/data/data_source/search_local_data_source.dart';
import 'package:heka_store/Features/search/data/data_source/search_remote_data_source.dart';
import 'package:heka_store/Features/search/domain/entities/search_filter.dart';
import 'package:heka_store/Features/search/domain/repos/search_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchRemoteDataSource remote;
  final SearchLocalDataSource local;

  const SearchRepositoryImpl({required this.remote, required this.local});

  @override
  Future<ApiResult<List<ProductModel>>> searchProducts(
    SearchFilter filter,
  ) async {
    try {
      final products = await remote.searchProducts(filter);

      // Save to history only when there's a real search term
      if (filter.searchTerm != null && filter.searchTerm!.isNotEmpty) {
        await local.addToHistory(filter.searchTerm!);
      }

      return ApiResult.success(products);
    } catch (e) {
      return ApiResult.error(e);
    }
  }
}
