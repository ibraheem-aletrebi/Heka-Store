
import 'package:freezed_annotation/freezed_annotation.dart';
import 'product_model.dart';
part 'products_response_model.freezed.dart';
part 'products_response_model.g.dart';

@freezed
class ProductsResponseModel with _$ProductsResponseModel {
  const factory ProductsResponseModel({
    required List<ProductModel> products,
    required int totalCount,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required bool hasPreviousPage,
    required bool hasNextPage,
  }) = _ProductsResponseModel;

  factory ProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseModelFromJson(json);
}