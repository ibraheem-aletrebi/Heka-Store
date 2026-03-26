// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryHiveAdapter extends TypeAdapter<CategoryHive> {
  @override
  final int typeId = 8;

  @override
  CategoryHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CategoryHive()
      ..code = fields[0] as String
      ..id = fields[1] as int
      ..nameAr = fields[2] as String
      ..nameEn = fields[3] as String
      ..description = fields[4] as String
      ..imageUrl = fields[5] as String
      ..parentCategoryCode = fields[6] as String?
      ..parentCategoryId = fields[7] as int?
      ..productCount = fields[8] as int
      ..status = fields[9] as int
      ..createdAt = fields[10] as DateTime
      ..updatedAt = fields[11] as DateTime?
      ..subCategories = (fields[12] as List).cast<CategoryHive>();
  }

  @override
  void write(BinaryWriter writer, CategoryHive obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.nameAr)
      ..writeByte(3)
      ..write(obj.nameEn)
      ..writeByte(4)
      ..write(obj.description)
      ..writeByte(5)
      ..write(obj.imageUrl)
      ..writeByte(6)
      ..write(obj.parentCategoryCode)
      ..writeByte(7)
      ..write(obj.parentCategoryId)
      ..writeByte(8)
      ..write(obj.productCount)
      ..writeByte(9)
      ..write(obj.status)
      ..writeByte(10)
      ..write(obj.createdAt)
      ..writeByte(11)
      ..write(obj.updatedAt)
      ..writeByte(12)
      ..write(obj.subCategories);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
