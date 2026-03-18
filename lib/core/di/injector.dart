import 'package:get_it/get_it.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:heka_store/Features/auth/data/repos/auth_repo_imp.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/Features/auth/domain/use_cases/login/login_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/forgot_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/reset_password_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/forgot_password/verify_reset_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/register_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/register/verify_email_otp_use_case.dart';
import 'package:heka_store/Features/auth/domain/use_cases/resend_otp_use_case.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:heka_store/Features/auth/presentation/blocs/register/register_bloc.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/local/secure_storage_service.dart';
import 'package:heka_store/core/services/remote/api_service.dart';
import 'package:heka_store/core/services/remote/dio_client.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  _initAuth();
}

// ─── Core ─────────────────────────────────────────────────────────────────────

Future<void> _initCore() async {
  // ─── Local Storage ────────────────────────────────
  sl.registerLazySingleton<LocalStorageService>(() => LocalStorageService());
  final localStorage = sl<LocalStorageService>();
  await localStorage.init(adapters: [AppThemeModeEnumAdapter()]);

  // ─── Secure Storage ───────────────────────────────
  sl.registerLazySingleton<SecureStorageService>(
    () => SecureStorageService(),
  );

  // ─── Router ───────────────────────────────────────
  sl.registerLazySingleton<AppRouter>(() => AppRouter());

  // ─── App BLoCs ────────────────────────────────────
  sl.registerFactory<ThemeBloc>(
    () => ThemeBloc(localStorage: localStorage),
  );
  sl.registerFactory<LanguageBloc>(
    () => LanguageBloc(localStorage: localStorage),
  );

  // ─── Network ──────────────────────────────────────
  DioClient().init();
  sl.registerLazySingleton<ApiService>(
    () => ApiService(DioClient().dio),
  );

  // ─── Error Handler ────────────────────────────────
  ApiErrorHandler.instance.init(
    onUnauthorized: () {
      // TODO: Navigate to Login
    },
  );
}

// ─── Auth ─────────────────────────────────────────────────────────────────────

void _initAuth() {
  // ─── DataSources ──────────────────────────────────
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );
  // sl.registerLazySingleton<AuthLocalDataSource>(
  //   () => AuthLocalDataSourceImpl(
  //     secureStorage: sl<SecureStorageService>(),
  //     localStorage: sl<LocalStorageService>(),
  //   ),
  // );

  // ─── Repository ───────────────────────────────────
  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(
      remoteDataSource: sl<AuthRemoteDataSource>(),
    ),
  );

  // ─── Use Cases ────────────────────────────────────
  sl.registerFactory<LoginUseCase>(
    () => LoginUseCase(authRepo: sl<AuthRepo>()),
  );
  sl.registerFactory<RegisterUseCase>(
    () => RegisterUseCase(authRepo: sl<AuthRepo>()),
  );
  sl.registerFactory<VerifyEmailOtpUseCase>(
    () => VerifyEmailOtpUseCase(authRepo: sl<AuthRepo>()),
  );
  sl.registerFactory<ForgotPasswordUseCase>(
    () => ForgotPasswordUseCase(repository: sl<AuthRepo>()),
  );
  sl.registerFactory<VerifyResetOtpUseCase>(
    () => VerifyResetOtpUseCase(repository: sl<AuthRepo>()),
  );
  sl.registerFactory<ResendOtpUseCase>(
    () => ResendOtpUseCase(repository: sl<AuthRepo>()),
  );
  sl.registerFactory<ResetPasswordUseCase>(
    () => ResetPasswordUseCase(repository: sl<AuthRepo>()),
  );

  // ─── BLoCs ────────────────────────────────────────
  sl.registerFactory<LoginBloc>(
    () => LoginBloc(loginUseCase: sl<LoginUseCase>()),
  );
  sl.registerFactory<RegisterBloc>(
    () => RegisterBloc(registerUseCase: sl<RegisterUseCase>()),
  );
  sl.registerFactory<ForgotPasswordBloc>(
    () => ForgotPasswordBloc(
      forgotPasswordUseCase: sl<ForgotPasswordUseCase>(),
      verifyOtpUseCase: sl<VerifyResetOtpUseCase>(),
      resendOtpUseCase: sl<ResendOtpUseCase>(),
      resetPasswordUseCase: sl<ResetPasswordUseCase>(),
    ),
  );

  
}