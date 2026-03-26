import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_request_model.freezed.dart';
part 'address_request_model.g.dart';

@freezed
class AddressRequestModel with _$AddressRequestModel {
  const factory AddressRequestModel({
    required String nickname,
    required String fullAddress,
    required double latitude,
    required double longitude,
    required bool isDefault,
    String? phoneNumber, 
  }) = _AddressRequestModel;

  factory AddressRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AddressRequestModelFromJson(json);
}