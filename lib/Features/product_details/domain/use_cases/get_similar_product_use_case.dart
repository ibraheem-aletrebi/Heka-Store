import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/domain/repos/product_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetSimilarProductsUseCase {
  final ProductRepo _repo;
  const GetSimilarProductsUseCase({required ProductRepo repo}) : _repo = repo;
  Future<ApiResult<List<ProductModel>>> call(int categoryId) =>
      _repo.getSimilarProducts(categoryId);
}