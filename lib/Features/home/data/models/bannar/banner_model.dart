// features/home/data/models/banner/banner_model.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
@HiveType(typeId: 6)
class BannerModel with _$BannerModel {
  const factory BannerModel({
    @HiveField(0) required int id,
    @HiveField(1) required String imageUrl,
    @HiveField(2) String? title,
    @HiveField(3) String? subtitle,
    @HiveField(4) String? actionUrl,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}