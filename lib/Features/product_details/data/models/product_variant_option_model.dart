import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_variant_option_model.freezed.dart';
part 'product_variant_option_model.g.dart';

@freezed
class ProductVariantOptionModel with _$ProductVariantOptionModel {
  const factory ProductVariantOptionModel({
    required int id,
    required String typeName,
    required String value,
    required String colorHex,
    required double priceAdjustment,
    required int stockQuantity,
    required int displayOrder,
    required bool isActive,
  }) = _ProductVariantOptionModel;

  factory ProductVariantOptionModel.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantOptionModelFromJson(json);
}