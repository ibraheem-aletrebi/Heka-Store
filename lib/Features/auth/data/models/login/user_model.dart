
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 1)
class UserModel with _$UserModel {
  const factory UserModel({
    
    @HiveField(0) required String email,
    @HiveField(1) required String firstName,
    @HiveField(2) required String lastName,
    @HiveField(3) required List<String> roles,
    @HiveField(4) required bool hasAddress,
    @HiveField(5) String? profilePictureUrl,
    @HiveField(6) String?  userCode,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}