import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/repos/brand_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetBrandProductsUseCase {
  final BrandRepo _repo;
  const GetBrandProductsUseCase({required BrandRepo repo}) : _repo = repo;

  Future<ApiResult<List<BrandProductModel>>> call(int brandId) =>
      _repo.getBrandProducts(brandId);
}