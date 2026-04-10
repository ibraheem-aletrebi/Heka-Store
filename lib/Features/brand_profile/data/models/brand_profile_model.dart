import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'brand_profile_model.freezed.dart';
part 'brand_profile_model.g.dart';

@freezed
@HiveType(typeId: 49)
class BrandProfileModel with _$BrandProfileModel {
  const factory BrandProfileModel({
    @HiveField(0) required int id,
    @HiveField(1) @JsonKey(name: 'storeName')   required String storeNameEn,
    @HiveField(2) @JsonKey(name: 'storeNameAr') required String storeNameAr,
    @HiveField(3) String? description,
    @HiveField(4) String? logoUrl,
    @HiveField(5) String? bannerImageUrl,
    @HiveField(6) double? averageRating,
    @HiveField(7) int? totalReviews,
    @HiveField(8) DateTime? joinedDate,
  }) = _BrandProfileModel;

  factory BrandProfileModel.fromJson(Map<String, dynamic> json) =>
      _$BrandProfileModelFromJson(json);
}