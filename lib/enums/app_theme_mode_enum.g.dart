// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme_mode_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppThemeModeEnumAdapter extends TypeAdapter<AppThemeModeEnum> {
  @override
  final int typeId = 0;

  @override
  AppThemeModeEnum read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AppThemeModeEnum.system;
      case 1:
        return AppThemeModeEnum.light;
      case 2:
        return AppThemeModeEnum.dark;
      default:
        return AppThemeModeEnum.system;
    }
  }

  @override
  void write(BinaryWriter writer, AppThemeModeEnum obj) {
    switch (obj) {
      case AppThemeModeEnum.system:
        writer.writeByte(0);
        break;
      case AppThemeModeEnum.light:
        writer.writeByte(1);
        break;
      case AppThemeModeEnum.dark:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppThemeModeEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
