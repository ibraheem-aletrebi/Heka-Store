import 'package:heka_store/Features/address/domain/repos/address_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class DeleteAddressUseCase {
  final AddressRepo _repo;
  const DeleteAddressUseCase({required AddressRepo repo}) : _repo = repo;
  Future<ApiResult<void>> call(int id) => _repo.deleteAddress(id);
}