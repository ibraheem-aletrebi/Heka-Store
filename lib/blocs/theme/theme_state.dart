
import 'package:flutter/material.dart' show ThemeMode;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/enums/app_theme_mode_enum.dart';

part 'theme_state.freezed.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = ThemeInitial;
  const factory ThemeState.loading() = ThemeLoading;

  const factory ThemeState.loaded({
    required AppThemeModeEnum appThemeMode,
  }) = ThemeLoaded;

  /// Something went wrong reading from Hive.
  const factory ThemeState.failure({
    required String message,
    @Default(AppThemeModeEnum.system) AppThemeModeEnum fallback,
  }) = ThemeFailure;

  const ThemeState._();

  ThemeMode get themeMode => maybeWhen(
        loaded: (mode) => switch (mode) {
          AppThemeModeEnum.light => ThemeMode.light,
          AppThemeModeEnum.dark => ThemeMode.dark,
          AppThemeModeEnum.system => ThemeMode.system,
        },
        failure: (_, fallback) => switch (fallback) {
          AppThemeModeEnum.light => ThemeMode.light,
          AppThemeModeEnum.dark => ThemeMode.dark,
          AppThemeModeEnum.system => ThemeMode.system,
        },
        orElse: () => ThemeMode.system,
      );

  AppThemeModeEnum get activeMode => maybeWhen(
        loaded: (mode) => mode,
        failure: (_, fallback) => fallback,
        orElse: () => AppThemeModeEnum.system,
      );
  bool get isLoading => this is ThemeLoading;

  bool get hasTheme => this is ThemeLoaded;
}