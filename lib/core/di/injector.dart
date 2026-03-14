import 'package:get_it/get_it.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

final sl = GetIt.instance;

Future<void> setupInjector() async {
  await _initCore();
}

Future<void> _initCore() async {
  final localStorage = LocalStorageService();
  await localStorage.init(adapters: [AppThemeModeEnumAdapter()]);

  sl.registerFactory<ThemeBloc>(() => ThemeBloc(localStorage: localStorage));
  sl.registerFactory<LanguageBloc>(() => LanguageBloc(localStorage: localStorage));
}
