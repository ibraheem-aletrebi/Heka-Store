import 'package:heka_store/Features/account/domain/repos/account_repo.dart';

class DeleteProfilePictureUseCase {
  final AccountRepo _accountRepo;

  DeleteProfilePictureUseCase({required AccountRepo accountRepo})
      : _accountRepo = accountRepo;

  Future<void> call() async {
    await _accountRepo.deleteProfilePicture();
  }
}
