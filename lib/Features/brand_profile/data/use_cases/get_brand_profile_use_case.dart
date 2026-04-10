import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/Features/brand_profile/data/repos/brand_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetBrandProfileUseCase {
  final BrandRepo _repo;
  const GetBrandProfileUseCase({required BrandRepo repo}) : _repo = repo;

  Future<ApiResult<BrandProfileModel>> call(int brandId) =>
      _repo.getBrandProfile(brandId);
}