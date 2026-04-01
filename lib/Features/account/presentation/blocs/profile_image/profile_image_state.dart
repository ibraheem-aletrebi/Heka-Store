import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_image_state.freezed.dart';

@freezed
class ProfileImageState with _$ProfileImageState {
  const factory ProfileImageState.initial() = _Initial;
  const factory ProfileImageState.loading() = _Loading;
  const factory ProfileImageState.uploadSuccess() = _UploadSuccess;
  const factory ProfileImageState.deleteSuccess() = _DeleteSuccess;
  const factory ProfileImageState.failure({required String message}) = _Failure;
}