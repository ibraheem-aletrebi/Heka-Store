import 'package:heka_store/Features/auth/data/models/login/login_request_model.dart';
import 'package:heka_store/Features/auth/data/models/login/login_response_model.dart';
import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';
import 'package:heka_store/core/use_cases/use_cases.dart';

class LoginUseCase extends UseCase<LoginResponseModel, LoginRequestModel> {
  final AuthRepo authRepo;
  LoginUseCase({required this.authRepo});

  @override
  Future<ApiResult<LoginResponseModel>> call([LoginRequestModel? param]) =>
      authRepo.login(loginRequestModel: param!);
}
