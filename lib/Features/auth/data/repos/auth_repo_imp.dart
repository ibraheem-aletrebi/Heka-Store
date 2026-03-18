import 'package:heka_store/Features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/forgot_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/resend_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/reset_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/data/models/register/register_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

class AuthRepoImp implements AuthRepo {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepoImp({required AuthRemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  @override
  Future<ApiResult<LoginResponseModel>> login({
    required LoginRequestModel loginRequestModel,
  }) async {
    try {
      final response = await _remoteDataSource.login(
        loginRequestModel: loginRequestModel,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<void>> forgotPassword({
    required ForgotPasswordRequestModel request,
  }) async {
    try {
      await _remoteDataSource.forgotPassword(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<void>> verifyOtp(VerifyOtpRequestModel request) async {
    try {
      await _remoteDataSource.verifyResetOtp(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<void>> resetPassword({
    required ResetPasswordRequestModel request,
  }) async {
    try {
      await _remoteDataSource.resetPassword(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<void>> resendOtp({
    required ResendOtpRequestModel request,
  }) async {
    try {
      await _remoteDataSource.resendOtp(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

  @override
  Future<ApiResult<void>> register(RegisterRequestModel request) async {
    try {
      await _remoteDataSource.register(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(ApiErrorHandler.instance.handle(e));
    }
  }

@override
Future<ApiResult<LoginResponseModel>> verifyEmailOtp(
  VerifyOtpRequestModel request,
) async {
  try {
    final response = await _remoteDataSource.verifyEmailOtp(request);

    return ApiResult.success(response);
  } catch (e) {
    return ApiResult.error(ApiErrorHandler.instance.handle(e));
  }
}
}
