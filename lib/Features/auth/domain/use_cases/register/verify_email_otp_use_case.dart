
import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class VerifyEmailOtpUseCase {
  final AuthRepo _authRepo;

  const VerifyEmailOtpUseCase({required AuthRepo authRepo})
      : _authRepo = authRepo;

  Future<ApiResult<LoginResponseModel>> call({
    required String email,
    required String code,
  }) {
    return _authRepo.verifyEmailOtp(
      VerifyOtpRequestModel(email: email, code: code),
    );
  }
}