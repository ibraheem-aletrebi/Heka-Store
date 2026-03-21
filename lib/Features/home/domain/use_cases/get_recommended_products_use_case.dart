
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetRecommendedProductsUseCase {
  final HomeRepo _repo;
  const GetRecommendedProductsUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<ProductsResponseModel>> call({
    int pageNumber = 1,
    int pageSize = 10,
  }) =>
      _repo.getRecommendedProducts(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
}