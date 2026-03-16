import 'package:get_it/get_it.dart';
import 'package:heka_store/Features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:heka_store/Features/auth/data/repos/auth_repo_imp.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/Features/auth/domain/use_cases/login_use_case.dart';
import 'package:heka_store/Features/auth/presentation/blocs/login/login_bloc.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/remote/api_service.dart';
import 'package:heka_store/core/services/remote/dio_client.dart';
import 'package:heka_store/core/services/remote/error/api_error_handler.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
  _initAuth();
}

Future<void> _initCore() async {
  sl.registerLazySingleton<LocalStorageService>(() => LocalStorageService());
  final localStorage = sl<LocalStorageService>();
  await localStorage.init(adapters: [AppThemeModeEnumAdapter()]);

  sl.registerLazySingleton<AppRouter>(() => AppRouter());

  sl.registerFactory<ThemeBloc>(() => ThemeBloc(localStorage: localStorage));
  sl.registerFactory<LanguageBloc>(
    () => LanguageBloc(localStorage: localStorage),
  );
  DioClient().init();
  sl.registerLazySingleton<ApiService>(() => ApiService(DioClient().dio));


  ApiErrorHandler.instance.init(
    onUnauthorized: () {
      // TODO: Navigate to Login
    },
  );
  
}

void _initAuth() {
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );

  sl.registerLazySingleton<AuthRepo>(
    () => AuthRepoImp(remoteDataSource: sl<AuthRemoteDataSource>()),
  );

  sl.registerFactory<LoginUseCase>(
    () => LoginUseCase(authRepo: sl<AuthRepo>()),
  );

  sl.registerFactory<LoginBloc>(
    () => LoginBloc(loginUseCase: sl<LoginUseCase>()),
  );
}
