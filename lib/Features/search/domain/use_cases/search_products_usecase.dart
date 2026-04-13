// ─────────────────────────────────────────────────────────
// features/search/domain/usecases/search_products_usecase.dart

import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/search/domain/entities/search_filter.dart';
import 'package:heka_store/Features/search/domain/repos/search_repository.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class SearchProductsUseCase {
  final SearchRepository repository;

  const SearchProductsUseCase(this.repository);

  Future<ApiResult<List<ProductModel>>> call(SearchFilter filter) =>
      repository.searchProducts(filter);
}