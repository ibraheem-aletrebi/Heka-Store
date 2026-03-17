import 'package:freezed_annotation/freezed_annotation.dart';
import 'token_model.dart';
import 'user_model.dart';

part 'login_data_model.freezed.dart';
part 'login_data_model.g.dart';
@freezed
class LoginDataModel with _$LoginDataModel {
  const factory LoginDataModel({
    required TokenModel token,
    required UserModel user,
  }) = _LoginDataModel;

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}