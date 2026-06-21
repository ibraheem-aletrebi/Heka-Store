import 'package:hive/hive.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';

part 'category_hive.g.dart';

@HiveType(typeId: 8)
class CategoryHive extends HiveObject {
  @HiveField(0)
  late String code;

  @HiveField(1)
  late int id;

  @HiveField(2)
  late String nameAr;

  @HiveField(3)
  late String nameEn;

  @HiveField(4)
  late String description;

  @HiveField(5)
  late String imageUrl;

  @HiveField(6)
  String? parentCategoryCode;

  @HiveField(7)
  int? parentCategoryId;

  @HiveField(8)
  late int productCount;
  @HiveField(9)
  late String status;           

  @HiveField(10)
  late DateTime createdAt;

  @HiveField(11)
  DateTime? updatedAt;

  @HiveField(12)
  late List<CategoryHive> subCategories;

  static CategoryHive fromDomain(Category category) {
    return CategoryHive()
      ..code = category.code
      ..id = category.id
      ..nameAr = category.nameAr
      ..nameEn = category.nameEn
      ..description = category.description
      ..imageUrl = category.imageUrl
      ..parentCategoryCode = category.parentCategoryCode
      ..parentCategoryId = category.parentCategoryId
      ..productCount = category.productCount
      ..status = category.status
      ..createdAt = category.createdAt
      ..updatedAt = category.updatedAt
      ..subCategories =
          category.subCategories.map(CategoryHive.fromDomain).toList();
  }

  Category toDomain() {
    return Category(
      code: code,
      id: id,
      nameAr: nameAr,
      nameEn: nameEn,
      description: description,
      imageUrl: imageUrl,
      parentCategoryCode: parentCategoryCode,
      parentCategoryId: parentCategoryId,
      productCount: productCount,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
      subCategories: subCategories.map((e) => e.toDomain()).toList(),
    );
  }
}