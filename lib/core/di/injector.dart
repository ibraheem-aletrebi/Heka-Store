import 'package:get_it/get_it.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
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
}
