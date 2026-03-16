import 'package:heka_store/Features/auth/data/data_source/auth_remote_data_source.dart';
import 'package:heka_store/Features/auth/data/models/login/request/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/response/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class AuthRepoImp implements AuthRepo {

  final AuthRemoteDataSource _remoteDataSource;

  AuthRepoImp({required AuthRemoteDataSource remoteDataSource}) : _remoteDataSource = remoteDataSource;
  @override
  Future<ApiResult<LoginResponseModel>> login({required LoginRequestModel loginRequestModel}) async{
    try{
      final response = await _remoteDataSource.login(loginRequestModel: loginRequestModel);
      return ApiResult.success(response);
    }catch(e){
      return ApiResult.error(e);
    }
  }
}