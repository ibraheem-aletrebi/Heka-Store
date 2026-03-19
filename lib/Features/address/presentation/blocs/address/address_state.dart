part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState({
    @Default([]) List<AddressModel> addresses,

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
}
