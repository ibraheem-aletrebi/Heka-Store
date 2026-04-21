import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class LogoutUseCase {
  const LogoutUseCase(this.authRepo);
  final AuthRepo authRepo;

  Future<ApiResult<void>> call() async {
    return await authRepo.logout();
  }
}