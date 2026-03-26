// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_data_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoriesDataHiveAdapter extends TypeAdapter<CategoriesDataHive> {
  @override
  final int typeId = 9;

  @override
  CategoriesDataHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoriesDataHive()
      ..categories = (fields[0] as List).cast<CategoryHive>()
      ..totalCount = fields[1] as int
      ..pageNumber = fields[2] as int
      ..pageSize = fields[3] as int
      ..totalPages = fields[4] as int
      ..hasPreviousPage = fields[5] as bool
      ..hasNextPage = fields[6] as bool;
  }

  @override
  void write(BinaryWriter writer, CategoriesDataHive obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.categories)
      ..writeByte(1)
      ..write(obj.totalCount)
      ..writeByte(2)
      ..write(obj.pageNumber)
      ..writeByte(3)
      ..write(obj.pageSize)
      ..writeByte(4)
      ..write(obj.totalPages)
      ..writeByte(5)
      ..write(obj.hasPreviousPage)
      ..writeByte(6)
      ..write(obj.hasNextPage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoriesDataHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
