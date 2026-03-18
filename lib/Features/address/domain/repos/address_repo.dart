
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/data/models/address_request_model.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

abstract class AddressRepo {
  Future<ApiResult<List<AddressModel>>> getAddresses();
  Future<ApiResult<AddressModel>> addAddress(AddressRequestModel request);
  Future<ApiResult<AddressModel>> updateAddress(int id, AddressRequestModel request);
  Future<ApiResult<void>> deleteAddress(int id);
  Future<ApiResult<AddressModel>> setDefaultAddress(int id);
}