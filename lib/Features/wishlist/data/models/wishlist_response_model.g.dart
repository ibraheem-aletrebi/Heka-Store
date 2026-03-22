// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishlistResponseModelImpl _$$WishlistResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WishlistResponseModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => WishlistItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$$WishlistResponseModelImplToJson(
        _$WishlistResponseModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
    };
