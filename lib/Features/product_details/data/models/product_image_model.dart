import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'product_image_model.freezed.dart';
part 'product_image_model.g.dart';

@freezed
@HiveType(typeId: 4)
class ProductImageModel with _$ProductImageModel {
  const factory ProductImageModel({
    @HiveField(0) required int id,
    @HiveField(1) required String imageUrl,
    @HiveField(2) required bool isPrimary,
    @HiveField(3) required int displayOrder,
  }) = _ProductImageModel;

  factory ProductImageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageModelFromJson(json);
}