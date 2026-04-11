import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_local_data_source.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/forgot_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/resend_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/reset_password_request_model.dart';
import 'package:heka_store/Features/auth/data/models/forgot_password/verify_otp_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/Features/auth/data/models/oogle_login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/register/register_request_model.dart';
import 'package:heka_store/Features/auth/data/models/update_fcm_token_request_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class AuthRepoImp implements AuthRepo {
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;

  AuthRepoImp({
    required AuthRemoteDataSource remoteDataSource,
    required AuthLocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  // ─── Login ────────────────────────────────────────────────────────────────

  @override
  Future<ApiResult<LoginResponseModel>> login({
    required LoginRequestModel loginRequestModel,
  }) async {
    try {
      await _localDataSource.clearTokens();
      final response = await _remoteDataSource.login(
        loginRequestModel: loginRequestModel,
      );
      print('>>> login response: $response');
      await _localDataSource.saveTokens(response);
      print('>>> tokens saved');
      await _localDataSource.saveUser(response);
      print('>>> user saved');
      return ApiResult.success(response);
    } catch (e) {
      print('>>> login error: $e');
      return ApiResult.error(e);
    }
  }
  // ─── Register ─────────────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> register(RegisterRequestModel request) async {
    try {
      await _remoteDataSource.register(request);
      await _localDataSource.savePendingVerifyEmail(request.email);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Verify Email OTP ─────────────────────────────────────────────────────

  @override
  Future<ApiResult<LoginResponseModel>> verifyEmailOtp(
    VerifyOtpRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.verifyEmailOtp(request);
      await _localDataSource.saveTokens(response);
      await _localDataSource.saveUser(response);
      await _localDataSource.clearPendingVerifyEmail();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Forgot Password ──────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> forgotPassword({
    required ForgotPasswordRequestModel request,
  }) async {
    try {
      await _remoteDataSource.forgotPassword(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Verify Reset OTP ─────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> verifyOtp(VerifyOtpRequestModel request) async {
    try {
      await _remoteDataSource.verifyResetOtp(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Reset Password ───────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> resetPassword({
    required ResetPasswordRequestModel request,
  }) async {
    try {
      await _remoteDataSource.resetPassword(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Resend OTP ───────────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> resendOtp({
    required ResendOtpRequestModel request,
  }) async {
    try {
      await _remoteDataSource.resendOtp(request);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Pending Verify Email ─────────────────────────────────────────────────

  @override
  Future<String?> getPendingVerifyEmail() async {
    return _localDataSource.getPendingVerifyEmail();
  }

  // ─── Session ──────────────────────────────────────────────────────────────

  @override
  Future<bool> isLoggedIn() async {
    return _localDataSource.isLoggedIn();
  }

  @override
  Future<void> logout() async {
    await _localDataSource.clearAll();
  }

  @override
  Future<ApiResult<LoginResponseModel>> googleLogin() async {
    try {
      print('>>> [Google] starting sign in');
      await GoogleSignIn.instance.initialize(
        serverClientId:
            '662441837073-he8s9cno21ijelpq2l8v7207isaga1u8.apps.googleusercontent.com',
      );

      final googleUser = await GoogleSignIn.instance.authenticate();
      final idToken = googleUser.authentication.idToken;

      if (idToken == null)
        return ApiResult.error(Exception('Failed to get ID token'));

      // Sign into Firebase
      final credential = GoogleAuthProvider.credential(idToken: idToken);
      final userCredential = await FirebaseAuth.instance.signInWithCredential(
        credential,
      );

      // ✅ Get Firebase idToken — NOT Google idToken
      final firebaseIdToken = await userCredential.user?.getIdToken();
      print('>>> [Google] firebaseIdToken: $firebaseIdToken');

      if (firebaseIdToken == null)
        return ApiResult.error(Exception('Failed to get Firebase ID token'));

      // Send Firebase idToken to backend
      await _localDataSource.clearTokens();
      final response = await _remoteDataSource.googleLogin(
        GoogleLoginRequestModel(idToken: firebaseIdToken), // ← Firebase token
      );
      await _localDataSource.saveTokens(response);
      await _localDataSource.saveUser(response);

      return ApiResult.success(response);
    } catch (e, stackTrace) {
      print('>>> [Google] ERROR: $e');
      print('>>> [Google] STACKTRACE: $stackTrace');
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<void>> updateFcmToken(String fcmToken) async {
    try {
      await _remoteDataSource.updateFcmToken(
        UpdateFcmTokenRequestModel(fcmToken: fcmToken),
      );
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }
}
