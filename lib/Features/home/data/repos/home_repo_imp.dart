import 'package:heka_store/Features/home/data/data_source/home_local_data_srouce.dart';
import 'package:heka_store/Features/home/data/data_source/home_remote_data_source.dart';
import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data.dart';
import 'package:heka_store/Features/home/data/models/paginated_result.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _remoteDataSource;
  final HomeLocalDataSource _localDataSource;

  const HomeRepoImpl({
    required HomeRemoteDataSource remoteDataSource,
    required HomeLocalDataSource localDataSource,
  })  : _remoteDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  // ─── Banners ──────────────────────────────────────────────────────────────

  @override
  Future<ApiResult<List<BannerModel>>> getBanners() async {
    try {
      final response = await _remoteDataSource.getBanners();
      await _localDataSource.saveBanners(response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getBanners();
      if (cached.isNotEmpty) return ApiResult.success(cached);
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  // ─── Categories ───────────────────────────────────────────────────────────

  @override
  Future<ApiResult<CategoriesData>> getCategories({
    int pageNumber = 1,
    int pageSize = 20,
  }) async {
    try {
      final response = await _remoteDataSource.getCategories(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      if (pageNumber == 1) {
        await _localDataSource.saveCategories(response);
      }
      return ApiResult.success(response);
    } catch (e) {
      if (pageNumber == 1) {
        final cached = _localDataSource.getCachedCategories();
        if (cached != null) return ApiResult.success(cached);
      }
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  // ─── Category Products ────────────────────────────────────────────────────

  @override
  Future<ApiResult<ProductsResponseModel>> getCategoryProducts({
    required String categoryCode,
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    try {
      final response = await _remoteDataSource.getCategoryProducts(
        categoryCode: categoryCode,
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  // ─── Recommended Products ─────────────────────────────────────────────────

  @override
  Future<ApiResult<ProductsResponseModel>> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    if (pageNumber == 1 && _localDataSource.isCacheValid()) {
      final cached = _localDataSource.getRecommendedProducts();
      if (cached.isNotEmpty) {
        return ApiResult.success(
          ProductsResponseModel(
            products: cached,
            totalCount: cached.length,
            pageNumber: 1,
            pageSize: pageSize,
            totalPages: 1,
            hasPreviousPage: false,
            hasNextPage: false,
          ),
        );
      }
    }

    try {
      final response = await _remoteDataSource.getRecommendedProducts(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      if (pageNumber == 1) {
        await _localDataSource.saveRecommendedProducts(response.products);
        await _localDataSource.saveLastFetchTime();
      }
      return ApiResult.success(response);
    } catch (e) {
      if (pageNumber == 1) {
        final cached = _localDataSource.getRecommendedProducts();
        if (cached.isNotEmpty) {
          return ApiResult.success(
            ProductsResponseModel(
              products: cached,
              totalCount: cached.length,
              pageNumber: 1,
              pageSize: pageSize,
              totalPages: 1,
              hasPreviousPage: false,
              hasNextPage: false,
            ),
          );
        }
      }
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  // ─── Featured Products ────────────────────────────────────────────────────

  @override
  Future<ApiResult<ProductsResponseModel>> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    if (pageNumber == 1 && _localDataSource.isCacheValid()) {
      final cached = _localDataSource.getFeaturedProducts();
      if (cached.isNotEmpty) {
        return ApiResult.success(
          ProductsResponseModel(
            products: cached,
            totalCount: cached.length,
            pageNumber: 1,
            pageSize: pageSize,
            totalPages: 1,
            hasPreviousPage: false,
            hasNextPage: false,
          ),
        );
      }
    }

    try {
      final response = await _remoteDataSource.getFeaturedProducts(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      if (pageNumber == 1) {
        await _localDataSource.saveFeaturedProducts(response.products);
      }
      return ApiResult.success(response);
    } catch (e) {
      if (pageNumber == 1) {
        final cached = _localDataSource.getFeaturedProducts();
        if (cached.isNotEmpty) {
          return ApiResult.success(
            ProductsResponseModel(
              products: cached,
              totalCount: cached.length,
              pageNumber: 1,
              pageSize: pageSize,
              totalPages: 1,
              hasPreviousPage: false,
              hasNextPage: false,
            ),
          );
        }
      }
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  // ─── Brands ───────────────────────────────────────────────────────────────

  @override
  Future<ApiResult<PaginatedResult<BrandModel>>> getBrands({
    int pageNumber = 1,
    int pageSize = 10,
  }) async {
    try {
      final result = await _remoteDataSource.getBrands(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );
      if (pageNumber == 1) {
        await _localDataSource.saveBrands(result.items);
      }
      return ApiResult.success(result);
    } catch (e) {
      if (pageNumber == 1) {
        final cached = _localDataSource.getBrands();
        if (cached.isNotEmpty) {
          return ApiResult.success(PaginatedResult<BrandModel>(
            items: cached,
            totalCount: cached.length,
            pageNumber: 1,
            pageSize: cached.length,
            totalPages: 1,
            hasPreviousPage: false,
            hasNextPage: false,
          ));
        }
      }
      return ApiResult.error(e);
    }
  }

  // ─── User Profile ─────────────────────────────────────────────────────────

  @override
  Future<ApiResult<UserProfile>> getUserProfile() async {
    try {
      final response = await _remoteDataSource.getUserProfile();
      return ApiResult.success(response.data!);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }
}