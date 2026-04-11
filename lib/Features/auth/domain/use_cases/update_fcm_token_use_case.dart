import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class UpdateFcmTokenUseCase {
  final AuthRepo _repo;
  UpdateFcmTokenUseCase(this._repo);
  Future<ApiResult<void>> call(String fcmToken) => _repo.updateFcmToken(fcmToken);
}