part of 'user_profile_bloc.dart';

@freezed
class UserProfileEvent with _$UserProfileEvent {
  const factory UserProfileEvent.loaded() = _Loaded;
  const factory UserProfileEvent.reloaded() = _Reloaded;
}