import 'package:flutter/material.dart' show ThemeMode;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/enums/app_theme_mode_enum.dart';
import 'package:heka_store/enums/errors/theme_error_enum.dart';

part 'theme_state.freezed.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = ThemeInitial;
  const factory ThemeState.loading() = ThemeLoading;
  const factory ThemeState.loaded({required AppThemeModeEnum appThemeMode}) =
      ThemeLoaded;
  const factory ThemeState.failure({
    required ThemeError themeError,
    @Default(AppThemeModeEnum.system) AppThemeModeEnum fallback,
  }) = ThemeFailure;

  const ThemeState._();

  static ThemeMode enumToFlutter(AppThemeModeEnum mode) {
    if (mode == AppThemeModeEnum.light) return ThemeMode.light;
    if (mode == AppThemeModeEnum.dark) return ThemeMode.dark;
    return ThemeMode.system;
  }

  ThemeMode get themeMode => maybeWhen(
    loaded: (mode) => enumToFlutter(mode),
    failure: (_, fallback) => enumToFlutter(fallback),
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
