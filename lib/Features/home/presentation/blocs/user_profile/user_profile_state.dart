part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    UserProfile? profile,
    ApiErrorModel? error,
  }) = _UserProfileState;
}