import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/constants/hive_keys.dart';
import 'package:heka_store/enums/app_theme_mode_enum.dart';
import 'package:heka_store/services/local/local_storage_service.dart';
import 'theme_event.dart';
import 'theme_state.dart';
export 'theme_event.dart';
export 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
final LocalStorageService _localStorage;
final BuildContext context;
  ThemeBloc({required LocalStorageService localStorage, required this.context})
      : _localStorage = localStorage,
        super(const ThemeState.initial()) {
    on<ThemeLoadRequested>(_onLoadRequested);
    on<ThemeChanged>(_onChanged);
  }

  Future<void> _onLoadRequested(
    ThemeLoadRequested event,
    Emitter<ThemeState> emit,
  ) async {
    emit(const ThemeState.loading());

    try {
      final mode = _localStorage.getValue(HiveKeys.appThemeMode);
      emit(ThemeState.loaded(appThemeMode: mode));
    } catch (e) {
      emit(ThemeState.failure(
        message: 'Failed to load theme: $e',
        fallback: AppThemeModeEnum.system,
      ));
    }
  }

  Future<void> _onChanged(
    ThemeChanged event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      await _localStorage.setValue<AppThemeModeEnum>(HiveKeys.appThemeMode, event.mode);
      emit(ThemeState.loaded(appThemeMode: event.mode));
    } catch (e) {
      emit(ThemeState.failure(
        message: 'Failed to save theme: $e',
        fallback: state.activeMode, // keep last known mode
      ));
    }
  }
}