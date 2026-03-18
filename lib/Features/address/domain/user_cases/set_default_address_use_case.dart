import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/domain/repos/address_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class SetDefaultAddressUseCase {
  final AddressRepo _repo;
  const SetDefaultAddressUseCase({required AddressRepo repo}) : _repo = repo;
  Future<ApiResult<AddressModel>> call(int id) => _repo.setDefaultAddress(id);
}
