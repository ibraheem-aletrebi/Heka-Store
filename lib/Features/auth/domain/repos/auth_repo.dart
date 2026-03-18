import 'package:heka_store/Features/auth/data/models/forgot_password/forgot_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/resend_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/reset_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class AuthRepo {

  // login
  Future<ApiResult<LoginResponseModel>> login({required LoginRequestModel loginRequestModel});


 // forgot password
  Future<ApiResult<void>> forgotPassword({required ForgotPasswordRequestModel request});
  Future<ApiResult<void>> verifyOtp(VerifyOtpRequestModel request);
  Future<ApiResult<void>> resetPassword({required ResetPasswordRequestModel request});
  Future<ApiResult<void>> resendOtp({required ResendOtpRequestModel request});


 
}