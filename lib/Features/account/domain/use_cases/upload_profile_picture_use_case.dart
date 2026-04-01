import 'package:heka_store/Features/account/domain/repos/account_repo.dart';

class UploadProfilePictureUseCase {
  final AccountRepo _accountRepo;

  UploadProfilePictureUseCase({required AccountRepo accountRepo})
      : _accountRepo = accountRepo;

  Future<void> call({required String imagePath}) async {
    await _accountRepo.uploadProfilePicture(imagePath: imagePath);
  }
}