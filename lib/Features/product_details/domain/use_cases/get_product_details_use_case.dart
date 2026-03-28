
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/domain/repos/product_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetProductDetailsUseCase {
  final ProductRepo _repo;
  const GetProductDetailsUseCase({required ProductRepo repo}) : _repo = repo;
  Future<ApiResult<ProductDetailsModel>> call(int id) => _repo.getProductDetails(id);
}