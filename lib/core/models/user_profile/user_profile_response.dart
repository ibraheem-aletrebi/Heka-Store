import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';

part 'user_profile_response.freezed.dart';
part 'user_profile_response.g.dart';

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const factory UserProfileResponse({
    required bool success,
    UserProfile? data,
    String? message,
    int? count,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}