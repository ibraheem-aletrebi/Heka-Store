import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/category/category.dart';

part 'categories_data.freezed.dart';
part 'categories_data.g.dart';

@freezed
class CategoriesData with _$CategoriesData {
  const factory CategoriesData({
    required List<Category> categories,
    required int totalCount,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required bool hasPreviousPage,
    required bool hasNextPage,
  }) = _CategoriesData;

  factory CategoriesData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDataFromJson(json);
}