import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/home/data/models/category/categories_data.dart';

part 'categories_response.freezed.dart';
part 'categories_response.g.dart';

@freezed
class CategoriesResponse with _$CategoriesResponse {
  const factory CategoriesResponse({
    required bool success,
    required CategoriesData data,
    String? message,
    required int count,
  }) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}