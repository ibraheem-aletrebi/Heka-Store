
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/data/models/address_request_model.dart';
import 'package:heka_store/core/services/remote/api_constants.dart';
import 'package:heka_store/core/services/remote/api_service.dart';

abstract class AddressRemoteDataSource {
  Future<List<AddressModel>> getAddresses();
  Future<AddressModel> addAddress(AddressRequestModel request);
  Future<AddressModel> updateAddress(int id, AddressRequestModel request);
  Future<void> deleteAddress(int id);
  Future<AddressModel> setDefaultAddress(int id);
}

class AddressRemoteDataSourceImpl implements AddressRemoteDataSource {
  final ApiService _apiService;

  const AddressRemoteDataSourceImpl({required ApiService apiService})
      : _apiService = apiService;

  @override
  Future<List<AddressModel>> getAddresses() async {
    final response = await _apiService.get(ApiConstants.address);
    final data = response.data['data'] as List;
    return data.map((e) => AddressModel.fromJson(e)).toList();
  }

  @override
  Future<AddressModel> addAddress(AddressRequestModel request) async {
    final response = await _apiService.post(
      ApiConstants.address,
      data: request.toJson(),
    );
    return AddressModel.fromJson(response.data['data']);
  }

  @override
  Future<AddressModel> updateAddress(
    int id,
    AddressRequestModel request,
  ) async {
    final response = await _apiService.put(
      ApiConstants.addressById(id),
      data: request.toJson(),
    );
    return AddressModel.fromJson(response.data['data']);
  }

  @override
  Future<void> deleteAddress(int id) async {
    await _apiService.delete(ApiConstants.addressById(id));
  }

  @override
  Future<AddressModel> setDefaultAddress(int id) async {
    final response = await _apiService.patch(
      ApiConstants.addressDefault(id),
    );
    return AddressModel.fromJson(response.data['data']);
  }
}