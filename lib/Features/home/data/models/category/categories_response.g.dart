// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesResponseImpl _$$CategoriesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesResponseImpl(
      success: json['success'] as bool,
      data: CategoriesData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$CategoriesResponseImplToJson(
        _$CategoriesResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'count': instance.count,
    };
