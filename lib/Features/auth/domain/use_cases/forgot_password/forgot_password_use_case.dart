import 'package:heka_store/Features/auth/data/models/forgot_password/forgot_password_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class ForgotPasswordUseCase {
  final AuthRepo _repository;

  const ForgotPasswordUseCase({required AuthRepo repository,  })
    : _repository = repository;

  Future<ApiResult<void>> call({required String email}) {
    return _repository.forgotPassword(
      request: ForgotPasswordRequestModel(email: email),
    );
  }
}
