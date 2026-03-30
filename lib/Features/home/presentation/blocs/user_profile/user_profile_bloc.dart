import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';
import 'package:heka_store/Features/home/domain/use_cases/get_user_profile_use_case.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final GetUserProfileUseCase _getUserProfileUseCase;

  UserProfileBloc({
    required GetUserProfileUseCase getUserProfileUseCase,
  })  : _getUserProfileUseCase = getUserProfileUseCase,
        super(const UserProfileState()) {
    on<_Loaded>(_onLoaded);
    on<_Reloaded>(_onReloaded);
  }

  Future<void> _onLoaded(
    _Loaded event,
    Emitter<UserProfileState> emit,
  ) async {
    if (state.isLoading) return;
    emit(state.copyWith(
      isLoading: true,
      error: null,
    ));
    await _fetchUserProfile(emit);
  }

  Future<void> _onReloaded(
    _Reloaded event,
    Emitter<UserProfileState> emit,
  ) async {
    emit(state.copyWith(
      isRefreshing: true,
      error: null,
    ));
    await _fetchUserProfile(emit);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _fetchUserProfile(
    Emitter<UserProfileState> emit,
  ) async {
    final response = await _getUserProfileUseCase();
    response.when(
      onSuccess: (profile) {
        emit(state.copyWith(
          isLoading: false,
          profile: profile,
          error: null,
        ));
      },
      onError: (error) {
        emit(state.copyWith(
          isLoading: false,
          error: error,
        ));
      },
    );
  }
}