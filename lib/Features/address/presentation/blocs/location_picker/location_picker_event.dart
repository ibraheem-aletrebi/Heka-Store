

part of 'location_picker_bloc.dart';

@freezed
sealed class LocationPickerEvent with _$LocationPickerEvent {
  const factory LocationPickerEvent.currentLocationRequested() = _CurrentLocationRequested;
  const factory LocationPickerEvent.mapTapped(double lat, double lng) = _MapTapped;
  const factory LocationPickerEvent.searchChanged(String query) = _SearchChanged;
  const factory LocationPickerEvent.placeSelected(NominatimPlace place) = _PlaceSelected;
  const factory LocationPickerEvent.searchCleared() = _SearchCleared;
  const factory LocationPickerEvent.locationConfirmed() = _LocationConfirmed;
  const factory LocationPickerEvent.languageChanged(String language) = _LanguageChanged;
  const factory LocationPickerEvent.nicknameChanged(String nickname) = _NicknameChanged;
  const factory LocationPickerEvent.isDefaultToggled() = _IsDefaultToggled;
  const factory LocationPickerEvent.phoneNumberChanged(String phoneNumber) = _PhoneNumberChanged;
  const factory LocationPickerEvent.editAddressLoaded(AddressModel address) = _EditAddressLoaded; // ← جديد
  const factory LocationPickerEvent.searchFocused() = _SearchFocused;
const factory LocationPickerEvent.searchUnfocused() = _SearchUnfocused;
}