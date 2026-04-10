import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'brand_model.freezed.dart';
part 'brand_model.g.dart';

@freezed
@HiveType(typeId: 5)
class BrandModel with _$BrandModel {
  const factory BrandModel({
    @HiveField(0) required int id,
    @HiveField(1) @JsonKey(name: 'storeNameAr') required String storeNameAr,
    @HiveField(2) @JsonKey(name: 'storeName')   required String storeNameEn,
    @HiveField(3) @JsonKey(name: 'logoUrl')      String? logoUrl,
    @HiveField(4) @JsonKey(name: 'averageRating') double? averageRating,
    @HiveField(5) @JsonKey(name: 'totalReviews') int? totalReviews,
  }) = _BrandModel;

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
}