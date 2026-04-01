import 'package:dio/dio.dart';
import 'package:heka_store/Features/account/data/models/edit_profile_request.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class AccountRemoteDataSource {
  Future<void> editProfile({required EditProfileRequest editProfileRequest});
  Future<void> uploadProfilePicture({required String imagePath});
  Future<void> deleteProfilePicture();
}

class AccountRemoteDataSourceImp implements AccountRemoteDataSource {
  final ApiService _apiService;

  AccountRemoteDataSourceImp({required ApiService apiService})
    : _apiService = apiService;

  @override
  Future<void> editProfile({
    required EditProfileRequest editProfileRequest,
  }) async {
    await _apiService.put(
      ApiConstants.editProfile,
      data: editProfileRequest.toJson(),
    );
  }

  @override
  Future<void> uploadProfilePicture({required String imagePath}) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(imagePath),
    });
    await _apiService.post(
      ApiConstants.updateProfilePicture,
      data: formData,
      options: Options(contentType: 'multipart/form-data'),
    );
  }

  @override
  Future<void> deleteProfilePicture() async {
    await _apiService.delete(ApiConstants.deleteProfilePicture);
  }
}
