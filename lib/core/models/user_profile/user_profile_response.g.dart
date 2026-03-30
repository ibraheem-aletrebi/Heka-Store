// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseImpl _$$UserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseImpl(
      success: json['success'] as bool,
      data: json['data'] == null
          ? null
          : UserProfile.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserProfileResponseImplToJson(
        _$UserProfileResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'message': instance.message,
      'count': instance.count,
    };
