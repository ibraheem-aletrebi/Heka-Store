import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_variant_option_model.freezed.dart';
part 'product_variant_option_model.g.dart';

@freezed
@HiveType(typeId: 15)
class ProductVariantOptionModel with _$ProductVariantOptionModel {
  const factory ProductVariantOptionModel({
    @HiveField(0) required int id,
    @HiveField(1) required String typeName,
    @HiveField(2) required String value,
    @HiveField(3) required String colorHex,
    @HiveField(4) required double priceAdjustment,
    @HiveField(5) required int stockQuantity,
    @HiveField(6) required int displayOrder,
    @HiveField(7) required bool isActive,
  }) = _ProductVariantOptionModel;

  factory ProductVariantOptionModel.fromJson(Map<String, dynamic> json) =>
      _$ProductVariantOptionModelFromJson(json);
}