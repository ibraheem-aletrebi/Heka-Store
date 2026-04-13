// features/search/domain/repositories/search_repository.dart

import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

import '../entities/search_filter.dart';

abstract class SearchRepository {
  Future<ApiResult< List<ProductModel>>> searchProducts(
      SearchFilter filter);
}

