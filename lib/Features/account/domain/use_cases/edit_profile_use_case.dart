import 'package:heka_store/Features/account/data/models/edit_profile_request.dart';
import 'package:heka_store/Features/account/domain/repos/account_repo.dart';

class EditProfileUseCase {
  final AccountRepo _accountRepo;

  EditProfileUseCase({required AccountRepo accountRepo})
      : _accountRepo = accountRepo;

  Future<void> call({required EditProfileRequest editProfileRequest}) async {
    await _accountRepo.editProfile(editProfileRequest: editProfileRequest);
  }
}