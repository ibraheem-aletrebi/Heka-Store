import 'package:heka_store/Features/auth/data/models/register/register_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class RegisterUseCase {
  final AuthRepo _authRepo;

  const RegisterUseCase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<ApiResult<void>> call({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String confirmPassword,
    required String phoneNumber,
    required bool acceptTerms,
  }) {
    return _authRepo.register(
      RegisterRequestModel(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        phoneNumber: phoneNumber,
        acceptTerms: acceptTerms,
      ),
    );
  }
}