import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class VerifyResetOtpUseCase {
  final AuthRepo _repository;

  const VerifyResetOtpUseCase({required AuthRepo repository})
    : _repository = repository;

  Future<ApiResult<void>> call({required String email, required String code}) {
    return _repository.verifyOtp(
      VerifyOtpRequestModel(email: email, code: code),
    );
  }
}
