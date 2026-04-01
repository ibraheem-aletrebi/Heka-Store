import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_request.freezed.dart';
part 'edit_profile_request.g.dart'; 

@freezed
class EditProfileRequest with _$EditProfileRequest {
  const factory EditProfileRequest({
    required String firstName,
    required String lastName,
    required String phoneNumber,
  }) = _EditProfileRequest;

  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestFromJson(json);
}