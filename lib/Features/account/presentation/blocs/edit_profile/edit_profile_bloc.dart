import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/account/domain/use_cases/edit_profile_use_case.dart';
import 'edit_profile_event.dart';
import 'edit_profile_state.dart';

class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  final EditProfileUseCase _editProfileUseCase;

  EditProfileBloc({required EditProfileUseCase editProfileUseCase})
      : _editProfileUseCase = editProfileUseCase,
        super(const EditProfileState.initial()) {
    on<EditProfileEvent>((event, emit) async {
      await event.map(
        editProfile: (e) async {
          emit(const EditProfileState.loading());
          try {
            await _editProfileUseCase(
              editProfileRequest: e.editProfileRequest,
            );
            emit(const EditProfileState.success());
          } catch (e) {
            emit(EditProfileState.failure(message: e.toString()));
          }
        },
      );
    });
  }
}