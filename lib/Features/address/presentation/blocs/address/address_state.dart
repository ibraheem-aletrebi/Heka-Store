part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    @Default([]) List<AddressModel> addresses,
    @Default('') String searchQuery,

    @Default(false) bool isLoading,
    @Default(false) bool isAddLoading,
    @Default(false) bool isUpdateLoading,
    @Default(false) bool isDeleteLoading,
    @Default(false) bool isSetDefaultLoading,

    @Default(false) bool isAddSuccess,
    @Default(false) bool isUpdateSuccess,
    @Default(false) bool isDeleteSuccess,
    @Default(false) bool isSetDefaultSuccess,

    ApiErrorModel? error,
  }) = _AddressState;

  const AddressState._();

  AddressModel? get defaultAddress =>
      addresses.where((a) => a.isDefault).firstOrNull;

  bool get hasAddresses => addresses.isNotEmpty;

  List<AddressModel> get filteredAddresses {
    final list = searchQuery.trim().isEmpty
        ? List<AddressModel>.from(addresses)
        : addresses.where((a) {
            final q = searchQuery.toLowerCase();
            return a.nickname.toLowerCase().contains(q) ||
                a.fullAddress.toLowerCase().contains(q) ||
                (a.phoneNumber?.toLowerCase().contains(q) ?? false);
          }).toList();

    list.sort((a, b) {
      if (a.isDefault == b.isDefault) return 0;
      return a.isDefault ? -1 : 1;
    });

    return list;
  }
}