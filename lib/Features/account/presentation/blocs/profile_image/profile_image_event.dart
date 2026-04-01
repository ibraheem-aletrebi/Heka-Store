import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_event.freezed.dart';

@freezed
class ProfileImageEvent with _$ProfileImageEvent {
  const factory ProfileImageEvent.uploadProfilePicture({
    required String imagePath,
  }) = _UploadProfilePicture;

  const factory ProfileImageEvent.deleteProfilePicture() = _DeleteProfilePicture;
}