import 'package:heka_store/Features/auth/data/models/forgot_password/forgot_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/resend_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/reset_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/data/models/register/register_request_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class AuthRepo {
  // ─── Login ────────────────────────────────────────
  Future<ApiResult<LoginResponseModel>> login({
    required LoginRequestModel loginRequestModel,
  });

  // ─── Register ─────────────────────────────────────
  Future<ApiResult<void>> register(RegisterRequestModel request);
  Future<ApiResult<LoginResponseModel>> verifyEmailOtp(
    VerifyOtpRequestModel request,
  );

  // ─── Forgot Password ──────────────────────────────
  Future<ApiResult<void>> forgotPassword({
    required ForgotPasswordRequestModel request,
  });
  Future<ApiResult<void>> verifyOtp(VerifyOtpRequestModel request);
  Future<ApiResult<void>> resetPassword({
    required ResetPasswordRequestModel request,
  });
  Future<ApiResult<void>> resendOtp({
    required ResendOtpRequestModel request,
  });

  // ─── Session ──────────────────────────────────────
  Future<String?> getPendingVerifyEmail();
  Future<bool> isLoggedIn();
  Future<ApiResult<void>> logout();



Future<ApiResult<LoginResponseModel>> googleLogin();
Future<ApiResult<void>> updateFcmToken(String fcmToken);

Future<ApiResult<void>> deleteAccount({required String password});
}