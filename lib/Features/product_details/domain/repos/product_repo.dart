import 'package:heka_store/Features/home/data/models/product/product_model.dart';
import 'package:heka_store/Features/product_details/data/models/product_details_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class ProductRepo {
  Future<ApiResult<ProductDetailsModel>> getProductDetails(int id);
  Future<ApiResult<List<ProductModel>>> getSimilarProducts(int categoryId);
}
