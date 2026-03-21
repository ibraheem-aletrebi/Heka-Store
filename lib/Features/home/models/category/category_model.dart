

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
@HiveType(typeId: 4)
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    @HiveField(0) required int id,
    @HiveField(1) required String nameAr,
    @HiveField(2) required String nameEn,
    @HiveField(3) String? imageUrl,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}