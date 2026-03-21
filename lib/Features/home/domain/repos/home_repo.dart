import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/category_model.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class HomeRepo {
  // ─── Banners ──────────────────────────────────────
  Future<ApiResult<List<BannerModel>>> getBanners();

  // ─── Categories ───────────────────────────────────
  Future<ApiResult<List<CategoryModel>>> getCategories();

  // ─── Recommended Products ─────────────────────────
  Future<ApiResult<ProductsResponseModel>> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });

  // ─── Featured Products ────────────────────────────
  Future<ApiResult<ProductsResponseModel>> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });

  // ─── Brands ───────────────────────────────────────
  Future<ApiResult<List<BrandModel>>> getBrands();
}