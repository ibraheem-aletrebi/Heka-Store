import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:heka_store/Features/product_details/data/models/product_variant_option_model.dart';

part 'product_variant_model.freezed.dart';
part 'product_variant_model.g.dart';

@freezed
@HiveType(typeId: 14)
class ProductVariantModel with _$ProductVariantModel {
  const factory ProductVariantModel({
    @HiveField(0) required String typeName,
    @HiveField(1) required List<ProductVariantOptionModel> options,
  }) = _ProductVariantModel;

  factory ProductVariantModel.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantModelFromJson(json);
}