import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/enums/app_theme_mode_enum.dart';

part 'theme_event.freezed.dart';

@freezed
sealed class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.load() = ThemeLoadRequested;
  const factory ThemeEvent.change(AppThemeModeEnum mode) = ThemeChanged;
  const factory ThemeEvent.toggle() = ThemeToggle;
}
