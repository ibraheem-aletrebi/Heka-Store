import 'package:heka_store/Features/account/data/models/edit_profile_request.dart';

abstract class AccountRepo {
  Future<void> editProfile({required EditProfileRequest editProfileRequest});
  Future<void> uploadProfilePicture({required String imagePath});
  Future<void> deleteProfilePicture();
}