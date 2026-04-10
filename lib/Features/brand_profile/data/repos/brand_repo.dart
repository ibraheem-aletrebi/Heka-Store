import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class BrandRepo {
  Future<ApiResult<BrandProfileModel>> getBrandProfile(int brandId);
  Future<ApiResult<List<BrandProductModel>>> getBrandProducts(int brandId);
}