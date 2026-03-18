import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/services/local/local_storage_keys.dart';
import 'package:heka_store/core/enums/app_theme_mode_enum.dart';
import 'package:heka_store/core/enums/errors/theme_error_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

import 'theme_event.dart';
import 'theme_state.dart';

export 'theme_event.dart';
export 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final LocalStorageService _localStorage;

  ThemeBloc({required LocalStorageService localStorage})
    : _localStorage = localStorage,
      super(const ThemeState.initial()) {
    on<ThemeLoadRequested>(_onLoadRequested);
    on<ThemeChanged>(_onChanged);
    on<ThemeToggle>(_onToggle);
  }

  Future<void> _onLoadRequested(
    ThemeLoadRequested event,
    Emitter<ThemeState> emit,
  ) async {
    emit(const ThemeState.loading());
    try {
      final mode =
          _localStorage.getValue<AppThemeModeEnum>(
            LocalStorageKeys.appThemeMode,
          ) ??
          AppThemeModeEnum.system;
      emit(ThemeState.loaded(appThemeMode: mode));
    } catch (e) {
      emit(
        ThemeState.failure(
          themeError: ThemeError.loadFailed,
          fallback: AppThemeModeEnum.system,
        ),
      );
    }
  }

  Future<void> _onChanged(ThemeChanged event, Emitter<ThemeState> emit) async {
    try {
      await _localStorage.setValue<AppThemeModeEnum>(
        LocalStorageKeys.appThemeMode,
        event.mode,
      );
      emit(ThemeState.loaded(appThemeMode: event.mode));
    } catch (e) {
      emit(
        ThemeState.failure(
          themeError: ThemeError.changeFailed,
          fallback: state.activeMode,
        ),
      );
    }
  }

  Future<void> _onToggle(ThemeToggle event, Emitter<ThemeState> emit) async {
    try {
      final currentMode =
          _localStorage.getValue<AppThemeModeEnum>(
            LocalStorageKeys.appThemeMode,
          ) ??
          AppThemeModeEnum.system;
      final next = currentMode == AppThemeModeEnum.light
          ? AppThemeModeEnum.dark
          : AppThemeModeEnum.light;
      await _localStorage.setValue<AppThemeModeEnum>(
        LocalStorageKeys.appThemeMode,
        next,
      );
      emit(ThemeState.loaded(appThemeMode: next));
    } catch (e) {
      emit(
        ThemeState.failure(
          themeError: ThemeError.toggleFailed,
          fallback: state.activeMode,
        ),
      );
    }
  }
}
