// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressRequestModelImpl _$$AddressRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddressRequestModelImpl(
      nickname: json['nickname'] as String,
      fullAddress: json['fullAddress'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      isDefault: json['isDefault'] as bool,
    );

Map<String, dynamic> _$$AddressRequestModelImplToJson(
        _$AddressRequestModelImpl instance) =>
    <String, dynamic>{
      'nickname': instance.nickname,
      'fullAddress': instance.fullAddress,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'isDefault': instance.isDefault,
    };
