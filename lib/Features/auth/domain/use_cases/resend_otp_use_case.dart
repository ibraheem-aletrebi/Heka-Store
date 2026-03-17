import 'package:heka_store/Features/auth/data/models/forgot_password/resend_otp_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class ResendOtpUseCase {
  final AuthRepo _repository;

  const ResendOtpUseCase({required AuthRepo repository})
    : _repository = repository;

  Future<ApiResult<void>> call({required String email}) {
    return _repository.resendOtp(request: ResendOtpRequestModel(email: email));
  }
}
