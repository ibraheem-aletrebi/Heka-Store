import 'package:heka_store/Features/auth/data/models/login/user_model.dart';
import 'package:heka_store/Features/auth/data/models/login_response_model.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/constants/secure_storage_keys.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';

abstract class AuthLocalDataSource {
  // ─── Tokens ───────────────────────────────────────
  Future<void> saveTokens(LoginResponseModel response);
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> clearTokens();

  // ─── User ─────────────────────────────────────────
  Future<void> saveUser(LoginResponseModel response);
  Future<UserModel?> getUser();
  Future<void> clearUser();

  // ─── Pending Verify Email ─────────────────────────
  Future<void> savePendingVerifyEmail(String email);
  Future<String?> getPendingVerifyEmail();
  Future<void> clearPendingVerifyEmail();

  // ─── Session ──────────────────────────────────────
  Future<bool> isLoggedIn();
  Future<void> clearAll();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SecureStorageService _secureStorage;
  final LocalStorageService _localStorage;

  const AuthLocalDataSourceImpl({
    required SecureStorageService secureStorage,
    required LocalStorageService localStorage,
  }) : _secureStorage = secureStorage,
       _localStorage = localStorage;

  // ─── Tokens → SecureStorage ───────────────────────────────────────────────

  @override
  Future<void> saveTokens(LoginResponseModel response) async {
    await _secureStorage.saveTokens(
      access: response.data!.token.accessToken,
      refresh: response.data!.token.refreshToken,
    );
  }

  @override
  Future<String?> getAccessToken() async {
    return _secureStorage.getAccessToken();
  }

  @override
  Future<String?> getRefreshToken() async {
    return _secureStorage.getRefreshToken();
  }

  @override
  Future<void> clearTokens() async {
    await _secureStorage.deleteTokens();
  }

  @override
  Future<void> saveUser(LoginResponseModel response) async {
    await _localStorage.setValue<UserModel>(
      HiveBoxes.data,
      LocalStorageKeys.user,
      response.data!.user,
    );
  }

  @override
  Future<UserModel?> getUser() async {
    return _localStorage.getValue<UserModel>(
      HiveBoxes.data,
      LocalStorageKeys.user,
    );
  }

  @override
  Future<void> clearUser() async {
    await _localStorage.remove(HiveBoxes.data, LocalStorageKeys.user);
  }

  @override
  Future<void> savePendingVerifyEmail(String email) async {
    await _secureStorage.write(
      key: SecureStorageKeys.pendingVerifyEmail,
      value: email,
    );
  }

  @override
  Future<String?> getPendingVerifyEmail() async {
    return _secureStorage.read(SecureStorageKeys.pendingVerifyEmail);
  }

  @override
  Future<void> clearPendingVerifyEmail() async {
    await _secureStorage.delete(SecureStorageKeys.pendingVerifyEmail);
  }

  @override
  Future<bool> isLoggedIn() async {
    return _secureStorage.hasAccessToken();
  }

  Future<bool> hasAddress() async {
    final user = await getUser();
    return user?.hasAddress ?? false;
  }


  @override
  Future<void> clearAll() async {
    await clearTokens();
    await clearUser();
    await clearPendingVerifyEmail();
  }
  

}
