import 'package:heka_store/Features/address/data/data_source/address_local_data_source.dart';
import 'package:heka_store/Features/address/data/data_source/address_remote_data_source.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/data/models/address_request_model.dart';
import 'package:heka_store/Features/address/domain/repos/address_repo.dart';
import 'package:heka_store/core/services/remote/api_result.dart';

class AddressRepoImpl implements AddressRepo {
  final AddressRemoteDataSource _remoteDataSource;
  final AddressLocalDataSource _localDataSource;

  const AddressRepoImpl({
    required AddressRemoteDataSource remoteDataSource,
    required AddressLocalDataSource localDataSource,
  }) : _remoteDataSource = remoteDataSource,
       _localDataSource = localDataSource;

  @override
  Future<ApiResult<List<AddressModel>>> getAddresses() async {
    try {
      final response = await _remoteDataSource.getAddresses();
      await _localDataSource.saveAddresses(response);
      return ApiResult.success(response);
    } catch (e) {
      final cached = _localDataSource.getAddresses();
      if (cached.isNotEmpty) return ApiResult.success(cached);
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<AddressModel>> addAddress(
    AddressRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.addAddress(request);
      await _localDataSource.addAddress(response);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<AddressModel>> updateAddress(
    int id,
    AddressRequestModel request,
  ) async {
    try {
      final response = await _remoteDataSource.updateAddress(id, request);
      await _localDataSource.updateAddress(response);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<void>> deleteAddress(int id) async {
    try {
      await _remoteDataSource.deleteAddress(id);
      await _localDataSource.deleteAddress(id);
      return ApiResult.success(null);
    } catch (e) {
      return ApiResult.error(e);
    }
  }

  @override
  Future<ApiResult<AddressModel>> setDefaultAddress(int id) async {
    try {
      final response = await _remoteDataSource.setDefaultAddress(id);
      await _localDataSource.setDefaultAddress(id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.error(e);
    }
  }
}
