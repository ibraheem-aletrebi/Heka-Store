
import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/data/data_source/product_local_data_source.dart';
import 'package:heka_store/Features/product_details/data/data_source/product_remote_data_source.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/Features/product_details/domain/repos/product_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class ProductRepoImpl implements ProductRepo {
  final ProductRemoteDataSource _remoteDataSource;
  final ProductLocalDataSource _localDataSource;

  const ProductRepoImpl({
    required ProductRemoteDataSource remoteDataSource,
    required ProductLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  @override
  Future<ApiResult<ProductDetailsModel>> getProductDetails(int id) async {
    try {
      final response = await _remoteDataSource.getProductDetails(id);
      await _localDataSource.saveProductDetails(response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getProductDetails(id);
      if (cached != null) return ApiResult.success(cached);
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<List<ProductModel>>> getSimilarProducts(
      int categoryId) async {
    try {
      final response = await _remoteDataSource.getSimilarProducts(categoryId);
      await _localDataSource.saveSimilarProducts(categoryId, response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getSimilarProducts(categoryId);
      if (cached.isNotEmpty) return ApiResult.success(cached);
      return ApiResult.error(e);
    }
  }
}