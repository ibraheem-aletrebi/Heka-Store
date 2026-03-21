
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetFeaturedProductsUseCase {
  final HomeRepo _repo;
  const GetFeaturedProductsUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<ProductsResponseModel>> call({
    int pageNumber = 1,
    int pageSize = 10,
  }) =>
      _repo.getFeaturedProducts(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
}