import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
@HiveType(typeId: 18)
class UserProfile with _$UserProfile {
  const factory UserProfile({
    @HiveField(0) required String userCode,
    @HiveField(1) required String firstName,
    @HiveField(2) required String lastName,
    @HiveField(3) required String email,
    @HiveField(4) required String phoneNumber,
    @HiveField(5) String? profilePictureUrl,
    @HiveField(6) String? profilePictureRelativePath,
  }) = _UserProfile;

  const UserProfile._();
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);


  String get fullName => '$firstName $lastName';

  bool get hasProfilePicture => profilePictureUrl != null;
}