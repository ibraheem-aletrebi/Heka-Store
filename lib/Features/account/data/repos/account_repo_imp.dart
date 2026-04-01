import 'package:heka_store/Features/account/data/data_source/account_remote_data_source.dart';
import 'package:heka_store/Features/account/data/models/edit_profile_request.dart';
import 'package:heka_store/Features/account/domain/repos/account_repo.dart';

class AccountRepoImp extends AccountRepo {
  final AccountRemoteDataSource _remoteDataSource;

  AccountRepoImp({required AccountRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  @override
  Future<void> editProfile({required EditProfileRequest editProfileRequest}) async {
    await _remoteDataSource.editProfile(editProfileRequest: editProfileRequest);
  }

  @override
  Future<void> uploadProfilePicture({required String imagePath}) async {
    await _remoteDataSource.uploadProfilePicture(imagePath: imagePath);
  }

  @override
  Future<void> deleteProfilePicture() async {
    await _remoteDataSource.deleteProfilePicture();
  }
}