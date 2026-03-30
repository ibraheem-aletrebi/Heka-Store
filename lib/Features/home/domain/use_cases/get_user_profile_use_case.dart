import 'package:heka_store/Features/home/domain/repos/home_repo.dart';
import 'package:heka_store/core/models/user_profile/user_profile.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetUserProfileUseCase {
  final HomeRepo _repo;
  const GetUserProfileUseCase({required HomeRepo repo}) : _repo = repo;

  Future<ApiResult<UserProfile>> call({
    int pageNumber = 1,
    int pageSize = 20,
  }) => _repo.getUserProfile();
}