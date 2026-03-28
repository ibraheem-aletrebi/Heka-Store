import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_model.freezed.dart';
part 'product_image_model.g.dart';

@freezed
class ProductImageModel with _$ProductImageModel {
  const factory ProductImageModel({
    required int id,
    required String imageUrl,
    required bool isPrimary,
    required int displayOrder,
  }) = _ProductImageModel;

  factory ProductImageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageModelFromJson(json);
}