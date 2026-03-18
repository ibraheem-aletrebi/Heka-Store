// features/address/data/datasources/address_local_data_source.dart

import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';

abstract class AddressLocalDataSource {
  Future<void> saveAddresses(List<AddressModel> addresses);
  List<AddressModel> getAddresses();
  Future<void> clearAddresses();

  Future<void> addAddress(AddressModel address);
  Future<void> updateAddress(AddressModel address);
  Future<void> deleteAddress(int id);
  Future<void> setDefaultAddress(int id);
}

class AddressLocalDataSourceImpl implements AddressLocalDataSource {
  final LocalStorageService _localStorage;

  const AddressLocalDataSourceImpl({
    required LocalStorageService localStorage,
  }) : _localStorage = localStorage;

  static const _addressesKey = 'CACHED_ADDRESSES';


  @override
  Future<void> saveAddresses(List<AddressModel> addresses) async {
    await _localStorage.setValue<List>(_addressesKey, addresses);
  }

  @override
  List<AddressModel> getAddresses() {
    final data = _localStorage.getValue<List>(_addressesKey);
    if (data == null) return [];
    return data.cast<AddressModel>();
  }

  @override
  Future<void> clearAddresses() async {
    await _localStorage.remove(_addressesKey);
  }


  @override
  Future<void> addAddress(AddressModel address) async {
    final addresses = getAddresses();
    await saveAddresses([...addresses, address]);
  }

  @override
  Future<void> updateAddress(AddressModel address) async {
    final addresses = getAddresses();
    await saveAddresses(
      addresses.map((a) => a.id == address.id ? address : a).toList(),
    );
  }

  @override
  Future<void> deleteAddress(int id) async {
    final addresses = getAddresses();
    await saveAddresses(addresses.where((a) => a.id != id).toList());
  }

  @override
  Future<void> setDefaultAddress(int id) async {
    final addresses = getAddresses();
    await saveAddresses(
      addresses.map((a) => a.copyWith(isDefault: a.id == id)).toList(),
    );
  }
}