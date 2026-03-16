
import 'package:heka_store/Features/auth/data/models/login/request/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/response/login_response_model.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseModel> login({required LoginRequestModel loginRequestModel});
}


class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSourceImpl({required this.apiService});
  @override
  Future<LoginResponseModel> login({required LoginRequestModel loginRequestModel}) async{
   final response = await apiService.post(ApiConstants.login, data: loginRequestModel.toJson());
   return LoginResponseModel.fromJson(response.data);
  }

  
}