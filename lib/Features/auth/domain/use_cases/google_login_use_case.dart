import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GoogleLoginUseCase {
  final AuthRepo _repo;
  GoogleLoginUseCase(this._repo);
  Future<ApiResult<LoginResponseModel>> call() => _repo.googleLogin();
}