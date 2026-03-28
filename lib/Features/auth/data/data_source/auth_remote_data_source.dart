import 'package:heka_store/Features/auth/data/models/forgot_password/forgot_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/resend_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/reset_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/data/models/register/register_request_model.dart';
import 'package:heka_store/core/constants/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class AuthRemoteDataSource {
  //login
  Future<LoginResponseModel> login({
    required LoginRequestModel loginRequestModel,
  });
  //forgot password
  Future<void> forgotPassword(ForgotPasswordRequestModel request);
  Future<void> verifyResetOtp(VerifyOtpRequestModel request);
  Future<void> resetPassword(ResetPasswordRequestModel request);
  Future<void> resendOtp(ResendOtpRequestModel request);
  //register
  Future<void> register(RegisterRequestModel request);
  Future<LoginResponseModel> verifyEmailOtp(VerifyOtpRequestModel request);

}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService _apiService;

  AuthRemoteDataSourceImpl({required ApiService apiService})
    : _apiService = apiService;
  @override
  Future<LoginResponseModel> login({
    required LoginRequestModel loginRequestModel,
  }) async {
    final response = await _apiService.post(
      ApiConstants.login,
      data: loginRequestModel.toJson(),
    );
    return LoginResponseModel.fromJson(response.data);
  }

  @override
  Future<void> forgotPassword(ForgotPasswordRequestModel request) async {
    await _apiService.post(ApiConstants.forgotPassword, data: request.toJson());
  }

  @override
  Future<void> verifyResetOtp(VerifyOtpRequestModel request) async {
    await _apiService.post(ApiConstants.verifyResetOtp, data: request.toJson());
  }

  @override
  Future<void> resetPassword(ResetPasswordRequestModel request) async {
    await _apiService.post(ApiConstants.resetPassword, data: request.toJson());
  }

  @override
  Future<void> resendOtp(ResendOtpRequestModel request) async {
    await _apiService.post(ApiConstants.resendOtp, data: request.toJson());
  }
  
  @override
  Future<void> register(RegisterRequestModel request)async{
      await _apiService.post(ApiConstants.register, data: request.toJson());
  }
  
  @override
  Future<LoginResponseModel> verifyEmailOtp(VerifyOtpRequestModel request) async{
    final response = await _apiService.post(ApiConstants.verifyEmailOtp, data: request.toJson());
    return LoginResponseModel.fromJson(response.data);
  }


}
