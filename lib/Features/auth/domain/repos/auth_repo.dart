import 'package:heka_store/Features/auth/data/models/login/request/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/response/login_response_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class AuthRepo {
  Future<ApiResult<LoginResponseModel>> login({required LoginRequestModel loginRequestModel});
}