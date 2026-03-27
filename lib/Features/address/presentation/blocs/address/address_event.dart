part of 'address_bloc.dart';

@freezed
sealed class AddressEvent with _$AddressEvent {
  const factory AddressEvent.loaded() = _Loaded;
  const factory AddressEvent.reLoaded() = _Reloaded;
  const factory AddressEvent.added(AddressRequestModel request) = _Added;
  const factory AddressEvent.updated(int id, AddressRequestModel request) = _Updated;
  const factory AddressEvent.deleted(int id) = _Deleted;
  const factory AddressEvent.setDefault(int id) = _SetDefault;
  const factory AddressEvent.searchChanged(String query) = _SearchChanged;
}