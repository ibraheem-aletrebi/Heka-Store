import 'package:heka_store/Features/brand_profile/data/data_source/brand_local_data_source.dart';
import 'package:heka_store/Features/brand_profile/data/data_source/brand_remote_data_source.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_product_model.dart';
import 'package:heka_store/Features/brand_profile/data/models/brand_profile_model.dart';
import 'package:heka_store/Features/brand_profile/data/repos/brand_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

class BrandRepoImpl implements BrandRepo {
  final BrandRemoteDataSource _remoteDataSource;
  final BrandLocalDataSource _localDataSource;

  const BrandRepoImpl({
    required BrandRemoteDataSource remoteDataSource,
    required BrandLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<ApiResult<BrandProfileModel>> getBrandProfile(int brandId) async {
    try {
      final response = await _remoteDataSource.getBrandProfile(brandId);
      await _localDataSource.saveBrandProfile(response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getBrandProfile(brandId);
      if (cached != null) return ApiResult.success(cached);
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<List<BrandProductModel>>> getBrandProducts(int brandId) async {
    try {
      final response = await _remoteDataSource.getBrandProducts(brandId);
      await _localDataSource.saveBrandProducts(brandId, response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getBrandProducts(brandId);
      if (cached.isNotEmpty) return ApiResult.success(cached);
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }
}