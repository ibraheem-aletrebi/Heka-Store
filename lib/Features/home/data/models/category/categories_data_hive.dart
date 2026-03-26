import 'package:hive/hive.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data.dart';
import 'package:heka_store/Features/home/data/models/category/category_hive.dart';

part 'categories_data_hive.g.dart';

@HiveType(typeId: 9)
class CategoriesDataHive extends HiveObject {
  @HiveField(0)
  late List<CategoryHive> categories;

  @HiveField(1)
  late int totalCount;

  @HiveField(2)
  late int pageNumber;

  @HiveField(3)
  late int pageSize;

  @HiveField(4)
  late int totalPages;

  @HiveField(5)
  late bool hasPreviousPage;

  @HiveField(6)
  late bool hasNextPage;

  static CategoriesDataHive fromDomain(CategoriesData data) {
    return CategoriesDataHive()
      ..categories = data.categories.map(CategoryHive.fromDomain).toList()
      ..totalCount = data.totalCount
      ..pageNumber = data.pageNumber
      ..pageSize = data.pageSize
      ..totalPages = data.totalPages
      ..hasPreviousPage = data.hasPreviousPage
      ..hasNextPage = data.hasNextPage;
  }

  CategoriesData toDomain() {
    return CategoriesData(
      categories: categories.map((e) => e.toDomain()).toList(),
      totalCount: totalCount,
      pageNumber: pageNumber,
      pageSize: pageSize,
      totalPages: totalPages,
      hasPreviousPage: hasPreviousPage,
      hasNextPage: hasNextPage,
    );
  }
}