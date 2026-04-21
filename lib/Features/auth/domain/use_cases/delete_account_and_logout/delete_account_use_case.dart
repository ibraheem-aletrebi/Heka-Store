import 'package:heka_store/Features/auth/domain/repos/auth_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class DeleteAccountUseCase {
  final AuthRepo _authRepo;

  DeleteAccountUseCase(this._authRepo);
  Future<ApiResult<void>> call({required String password}) {
    return _authRepo.deleteAccount(password: password);
  }
}
