import 'package:heka_store/Features/auth/data/models/forgot_password/reset_password_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class ResetPasswordUseCase {
  final AuthRepo _repository;

  const ResetPasswordUseCase({required AuthRepo repository})
    : _repository = repository;

  Future<ApiResult<void>> call({
    required String email,
    required String code,
    required String newPassword,
    required String confirmPassword,
  }) {
    return _repository.resetPassword(
      request: ResetPasswordRequestModel(
        email: email,
        code: code,
        newPassword: newPassword,
        confirmPassword: confirmPassword,
      ),
    );
  }
}
