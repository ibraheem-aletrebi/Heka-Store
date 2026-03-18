import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/domain/repos/address_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class GetAddressesUseCase {
  final AddressRepo _repo;
  const GetAddressesUseCase({required AddressRepo repo}) : _repo = repo;
  Future<ApiResult<List<AddressModel>>> call() => _repo.getAddresses();
}