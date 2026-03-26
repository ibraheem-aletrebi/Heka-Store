import 'package:heka_store/Features/cart/domain/repos/cart_repository.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetProductsYouMayLike {
  final CartRepository _repository;
  const GetProductsYouMayLike(this._repository);

  Future<ApiResult<ProductsResponseModel>> call({
    int pageNumber = 1,
    int pageSize = 10,
  }) => _repository.getProductsYouMayLike(
    pageNumber: pageNumber,
    pageSize: pageSize,
  );
}
