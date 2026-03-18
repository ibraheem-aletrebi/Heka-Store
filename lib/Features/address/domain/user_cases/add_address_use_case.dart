import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/data/models/address_request_model.dart';
import 'package:heka_store/Features/address/domain/repos/address_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class AddAddressUseCase {
  final AddressRepo _repo;
  const AddAddressUseCase({required AddressRepo repo}) : _repo = repo;

  Future<ApiResult<AddressModel>> call(AddressRequestModel request) =>
      _repo.addAddress(request);
}
