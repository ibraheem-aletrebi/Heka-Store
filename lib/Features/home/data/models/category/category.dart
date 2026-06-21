import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String code,
    required int id,
    required String nameAr,
    required String nameEn,
    @Default('') String description,
    @Default('') String imageUrl,
    String? parentCategoryCode,
    int? parentCategoryId,
    @Default(0) int productCount,
    @Default('Active') String status,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default([]) List<Category> subCategories,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}