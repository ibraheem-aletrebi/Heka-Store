import 'package:hive_flutter/hive_flutter.dart';
part 'app_theme_mode_enum.g.dart';

@HiveType(typeId: 0)
enum AppThemeModeEnum {
  @HiveField(0)
  system,
  @HiveField(1)
  light,
  @HiveField(2)
  dark,
}
