import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class BrandRemoteDataSource {
  Future<BrandProfileModel> getBrandProfile(int brandId);
  Future<List<BrandProductModel>> getBrandProducts(int brandId);
}

class BrandRemoteDataSourceImpl implements BrandRemoteDataSource {
  final ApiService _apiService;

  const BrandRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<BrandProfileModel> getBrandProfile(int brandId) async {
    final response = await _apiService.get('${ApiConstants.brands}/$brandId');
    return BrandProfileModel.fromJson(
      response.data['data'] as Map<String, dynamic>,
    );
  }

  @override
  Future<List<BrandProductModel>> getBrandProducts(int brandId) async {
    final response = await _apiService.get(
      ApiConstants.vendorProducts(brandId),
    );
    final data = response.data['data'] as List;
    return data
        .map((e) => BrandProductModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
