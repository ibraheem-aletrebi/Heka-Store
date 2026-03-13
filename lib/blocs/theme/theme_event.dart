import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/enums/app_theme_mode_enum.dart';

part 'theme_event.freezed.dart';

@freezed
sealed class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.loadRequested() = ThemeLoadRequested;
  const factory ThemeEvent.changed(AppThemeModeEnum mode) = ThemeChanged;
}
