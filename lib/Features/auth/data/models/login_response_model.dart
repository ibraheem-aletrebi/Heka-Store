import 'package:freezed_annotation/freezed_annotation.dart';
import 'login/login_data_model.dart';

part 'login/login_response_model.freezed.dart';
part 'login/login_response_model.g.dart';
@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required bool success,
    LoginDataModel? data,
    String? message,
    int? count,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}