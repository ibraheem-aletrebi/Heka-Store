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
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
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
      await _localDataSource.saveTokens(response);
      await _localDataSource.saveUser(response);
      final fcmToken = await LocalStorageService().getValue(
        HiveBoxes.data,
        "fcmToken",
      );
      if (fcmToken != null) {
        await _remoteDataSource.updateFcmToken(
          UpdateFcmTokenRequestModel(fcmToken: fcmToken),
        );
      }
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Register ─────────────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> register(RegisterRequestModel request) async {
    try {
      await _remoteDataSource.register(request);
      final fcmToken = await LocalStorageService().getValue(
        HiveBoxes.data,
        "fcmToken",
      );
      if (fcmToken != null) {
        await _remoteDataSource.updateFcmToken(
          UpdateFcmTokenRequestModel(fcmToken: fcmToken),
        );
      }
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


  // ─── Session ──────────────────────────────────────────────────────────────

  @override
  Future<bool> isLoggedIn() async {
    return _localDataSource.isLoggedIn();
  }

  @override
  Future<ApiResult<void>> logout() async {
    // FIX: Always call the API *before* clearing local storage.
    // The remote logout (revoke-token) reads the refresh token from local
    // storage — clearing first caused "No refresh token available".
    //
    // We also always clear local data regardless of whether the API call
    // succeeds, so the user is never stuck in a logged-in state locally.
    try {
      await _remoteDataSource.logout();
    } catch (_) {
      // API call failed (expired token, network error, etc.) — that's fine.
      // We still want the user logged out locally, so we swallow the error
      // and fall through to clearAll() below.
    } finally {
      await _localDataSource.clearAll();
    }
    return ApiResult.success(null);
  }

  // ─── Delete Account ───────────────────────────────────────────────────────

  @override
  Future<ApiResult<void>> deleteAccount({required String password}) async {
    // Same pattern: call API first, then clear local storage.
    // If the API succeeds but clearAll() throws, the account is still deleted
    // on the server — the user can log in again and it will re-clear.
    try {
      await _remoteDataSource.deleteAccount(password: password);
      await _localDataSource.clearAll();
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  // ─── Google Login ─────────────────────────────────────────────────────────

  @override
  Future<ApiResult<LoginResponseModel>> googleLogin() async {
    try {
      final googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile'],
        serverClientId:
            '983108644765-45ck6udhhdmeq9nckh6fnq9g8helou40.apps.googleusercontent.com',
      );

      final googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        return ApiResult.error(Exception('Google sign-in cancelled'));
      }

      final auth = await googleUser.authentication;
      final idToken = auth.idToken;
      if (idToken == null) {
        return ApiResult.error(Exception('Failed to get ID token'));
      }

      await _localDataSource.clearTokens();
      final response = await _remoteDataSource.googleLogin(
        GoogleLoginRequestModel(idToken: idToken),
      );
      await _localDataSource.saveTokens(response);
      await _localDataSource.saveUser(response);

      return ApiResult.success(response);
    } catch (e, stackTrace) {
      print('>>> [Google] ERROR: $e\n$stackTrace');
      return ApiResult.error(e);
    }
  }

  // ─── Update FCM Token ─────────────────────────────────────────────────────

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