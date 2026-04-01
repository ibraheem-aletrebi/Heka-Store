// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToCartResponseImpl _$$AddToCartResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToCartResponseImpl(
      success: json['success'] as bool,
      data: CartItemModel.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AddToCartResponseImplToJson(
        _$AddToCartResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'count': instance.count,
    };
