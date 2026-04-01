import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/account/domain/use_cases/delete_profile_picture_use_case.dart';
import 'package:heka_store/Features/account/domain/use_cases/upload_profile_picture_use_case.dart';
import 'profile_image_event.dart';
import 'profile_image_state.dart';

class ProfileImageBloc extends Bloc<ProfileImageEvent, ProfileImageState> {
  final UploadProfilePictureUseCase _uploadProfilePictureUseCase;
  final DeleteProfilePictureUseCase _deleteProfilePictureUseCase;

  ProfileImageBloc({
    required UploadProfilePictureUseCase uploadProfilePictureUseCase,
    required DeleteProfilePictureUseCase deleteProfilePictureUseCase,
  })  : _uploadProfilePictureUseCase = uploadProfilePictureUseCase,
        _deleteProfilePictureUseCase = deleteProfilePictureUseCase,
        super(const ProfileImageState.initial()) {
    on<ProfileImageEvent>((event, emit) async {
      await event.map(
        uploadProfilePicture: (e) async {
          emit(const ProfileImageState.loading());
          try {
            await _uploadProfilePictureUseCase(imagePath: e.imagePath);
            emit(const ProfileImageState.uploadSuccess());
          } catch (e) {
            emit(ProfileImageState.failure(message: e.toString()));
          }
        },
        deleteProfilePicture: (e) async {
          emit(const ProfileImageState.loading());
          try {
            await _deleteProfilePictureUseCase();
            emit(const ProfileImageState.deleteSuccess());
          } catch (e) {
            emit(ProfileImageState.failure(message: e.toString()));
          }
        },
      );
    });
  }
}
