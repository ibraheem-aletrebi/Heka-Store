import 'package:heka_store/Features/home/data/models/bannar/banner_model.dart';
import 'package:heka_store/Features/home/data/models/brand/brand_model.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data.dart';
import 'package:heka_store/Features/home/data/models/product/products_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class HomeRepo {
  Future<ApiResult<List<BannerModel>>> getBanners();
  Future<ApiResult<CategoriesData>> getCategories({   // ← paginated
    int pageNumber = 1,
    int pageSize = 20,
  });
  Future<ApiResult<ProductsResponseModel>> getRecommendedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });
  Future<ApiResult<ProductsResponseModel>> getFeaturedProducts({
    int pageNumber = 1,
    int pageSize = 10,
  });
  Future<ApiResult<List<BrandModel>>> getBrands();
}