import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/account/data/models/edit_profile_request.dart';

part 'edit_profile_event.freezed.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent {
  const factory EditProfileEvent.editProfile({
    required EditProfileRequest editProfileRequest,
  }) = _EditProfile;
}