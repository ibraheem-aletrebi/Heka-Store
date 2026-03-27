import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/Features/address/data/models/address_request_model.dart';
import 'package:heka_store/Features/address/domain/user_cases/add_address_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/delete_address_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/get_addresses_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/set_default_address_use_case.dart';
import 'package:heka_store/Features/address/domain/user_cases/update_address_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  final GetAddressesUseCase _getAddressesUseCase;
  final AddAddressUseCase _addAddressUseCase;
  final UpdateAddressUseCase _updateAddressUseCase;
  final DeleteAddressUseCase _deleteAddressUseCase;
  final SetDefaultAddressUseCase _setDefaultAddressUseCase;

  AddressBloc({
    required GetAddressesUseCase getAddressesUseCase,
    required AddAddressUseCase addAddressUseCase,
    required UpdateAddressUseCase updateAddressUseCase,
    required DeleteAddressUseCase deleteAddressUseCase,
    required SetDefaultAddressUseCase setDefaultAddressUseCase,
  })  : _getAddressesUseCase = getAddressesUseCase,
        _addAddressUseCase = addAddressUseCase,
        _updateAddressUseCase = updateAddressUseCase,
        _deleteAddressUseCase = deleteAddressUseCase,
        _setDefaultAddressUseCase = setDefaultAddressUseCase,
        super(const AddressState()) {
    on<_Loaded>(_onLoaded);
    on<_Reloaded>(_onReloaded);
    on<_Added>(_onAdded);
    on<_Updated>(_onUpdated);
    on<_Deleted>(_onDeleted);
    on<_SetDefault>(_onSetDefault);
    on<_SearchChanged>(_onSearchChanged);
  }

  Future<void> _onLoaded(
    _Loaded event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));

    final response = await _getAddressesUseCase();
    response.when(
      onSuccess: (addresses) => emit(state.copyWith(
        isLoading: false,
        addresses: addresses,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }
    Future<void> _onReloaded(
    _Reloaded event,
    Emitter<AddressState> emit,
  ) async {

    final response = await _getAddressesUseCase();
    response.when(
      onSuccess: (addresses) => emit(state.copyWith(
        isLoading: false,
        addresses: addresses,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onAdded(
    _Added event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
      isAddLoading: true,
      isAddSuccess: false,
      error: null,
    ));

    final response = await _addAddressUseCase(event.request);
    response.when(
      onSuccess: (address) => emit(state.copyWith(
        isAddLoading: false,
        isAddSuccess: true,
        addresses: [...state.addresses, address],
      )),
      onError: (error) => emit(state.copyWith(
        isAddLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onUpdated(
    _Updated event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
      isUpdateLoading: true,
      isUpdateSuccess: false,
      error: null,
    ));

    final response = await _updateAddressUseCase(event.id, event.request);
    response.when(
      onSuccess: (updated) => emit(state.copyWith(
        isUpdateLoading: false,
        isUpdateSuccess: true,
        addresses: state.addresses
            .map((a) => a.id == updated.id ? updated : a)
            .toList(),
      )),
      onError: (error) => emit(state.copyWith(
        isUpdateLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onDeleted(
    _Deleted event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
      isDeleteLoading: true,
      isDeleteSuccess: false,
      error: null,
    ));

    final response = await _deleteAddressUseCase(event.id);
    response.when(
      onSuccess: (_) => emit(state.copyWith(
        isDeleteLoading: false,
        isDeleteSuccess: true,
        addresses: state.addresses.where((a) => a.id != event.id).toList(),
      )),
      onError: (error) => emit(state.copyWith(
        isDeleteLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onSetDefault(
    _SetDefault event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.copyWith(
      isSetDefaultLoading: true,
      isSetDefaultSuccess: false,
      error: null,
    ));

    final response = await _setDefaultAddressUseCase(event.id);
    response.when(
      onSuccess: (updated) => emit(state.copyWith(
        isSetDefaultLoading: false,
        isSetDefaultSuccess: true,
        addresses: state.addresses
            .map((a) => a.copyWith(isDefault: a.id == updated.id))
            .toList(),
      )),
      onError: (error) => emit(state.copyWith(
        isSetDefaultLoading: false,
        error: error,
      )),
    );
  }

  void _onSearchChanged(
    _SearchChanged event,
    Emitter<AddressState> emit,
  ) {
    emit(state.copyWith(searchQuery: event.query));
  }
}