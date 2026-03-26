import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
@HiveType(typeId: 2)
class AddressModel with _$AddressModel {
  const factory AddressModel({
    @HiveField(0) required int id,
    @HiveField(1) required String nickname,
    @HiveField(2) required String fullAddress,
    @HiveField(3) required double latitude,
    @HiveField(4) required double longitude,
    @HiveField(5) required bool isDefault,
    @HiveField(6) required String createdAt,
    @HiveField(7) String? phoneNumber,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}