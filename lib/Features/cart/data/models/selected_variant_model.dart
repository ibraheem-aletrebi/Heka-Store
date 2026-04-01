import 'package:freezed_annotation/freezed_annotation.dart';
part 'selected_variant_model.freezed.dart';
part 'selected_variant_model.g.dart';

@freezed
class SelectedVariantModel with _$SelectedVariantModel {
  const factory SelectedVariantModel({
    required int variantId,
    required String typeName,
    required String value,
    required String colorHex,
    required double priceAdjustment,
  }) = _SelectedVariantModel;

  factory SelectedVariantModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedVariantModelFromJson(json);
}