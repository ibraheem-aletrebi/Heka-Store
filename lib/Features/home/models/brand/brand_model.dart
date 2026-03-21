
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
@HiveType(typeId: 5)
class BrandModel with _$BrandModel {
  const factory BrandModel({
    @HiveField(0) required int id,
    @HiveField(1) required String nameAr,
    @HiveField(2) required String nameEn,
    @HiveField(3) String? logoUrl,
    @HiveField(4) double? rating,
    @HiveField(5) int? totalReviews,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}