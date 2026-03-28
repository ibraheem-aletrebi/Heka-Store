import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_option_model.dart';

part 'product_variant_model.freezed.dart';
part 'product_variant_model.g.dart';

@freezed
class ProductVariantModel with _$ProductVariantModel {
  const factory ProductVariantModel({
    required String typeName,
    required List<ProductVariantOptionModel> options,
  }) = _ProductVariantModel;

  factory ProductVariantModel.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantModelFromJson(json);
}