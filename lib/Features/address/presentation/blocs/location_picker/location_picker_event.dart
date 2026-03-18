
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
}