part of 'location_picker_bloc.dart';

@freezed
class LocationPickerState with _$LocationPickerState {
  const factory LocationPickerState({
    double? latitude,
    double? longitude,
    String? address,
    @Default('') String searchQuery,
    @Default([]) List<NominatimPlace> searchResults,
    @Default(false) bool isSearching,
    @Default(false) bool isLoadingLocation,
    @Default(false) bool isConfirmed,
    @Default(false) bool isPermissionDenied,
    @Default(false) bool isPermissionDeniedForever,
    @Default('') String nickname,
    @Default(false) bool isDefault,
    @Default('') String phoneNumber,
    ValidationKey? phoneNumberError,
    String? errorMessage,
    @Default(false) bool isSearchFocused, // ✅ جديد
  }) = _LocationPickerState;

  const LocationPickerState._();

  bool get hasLocation => latitude != null && longitude != null;

  String get formattedCoordinates {
    if (!hasLocation) return '';
    final lat = latitude!.toStringAsFixed(5);
    final lng = longitude!.toStringAsFixed(5);
    return '$lat, $lng';
  }
}