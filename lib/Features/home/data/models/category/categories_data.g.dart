// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesDataImpl _$$CategoriesDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesDataImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$$CategoriesDataImplToJson(
        _$CategoriesDataImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };
