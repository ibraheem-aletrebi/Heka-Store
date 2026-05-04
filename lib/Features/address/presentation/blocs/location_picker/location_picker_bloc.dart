import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:heka_store/Features/address/data/models/address_model.dart';
import 'package:heka_store/core/enums/validation_key.dart';
import 'package:heka_store/core/services/nominatim/nominatim_place.dart';
import 'package:heka_store/core/services/nominatim/nominatim_service.dart';
import 'package:heka_store/core/utils/field_validator.dart';

part 'location_picker_event.dart';
part 'location_picker_state.dart';
part 'location_picker_bloc.freezed.dart';

class LocationPickerBloc
    extends Bloc<LocationPickerEvent, LocationPickerState> {
  final NominatimService _nominatimService;
  String language;
  Timer? _debounceTimer;

  LocationPickerBloc({
    required NominatimService nominatimService,
    this.language = 'en',
  })  : _nominatimService = nominatimService,
        super(const LocationPickerState()) {
    on<_CurrentLocationRequested>(_onCurrentLocationRequested);
    on<_MapTapped>(_onMapTapped);
    on<_SearchChanged>(_onSearchChanged);
    on<_PlaceSelected>(_onPlaceSelected);
    on<_SearchCleared>(_onSearchCleared);
    on<_LocationConfirmed>(_onLocationConfirmed);
    on<_LanguageChanged>(_onLanguageChanged);
    on<_NicknameChanged>(_onNicknameChanged);
    on<_IsDefaultToggled>(_onIsDefaultToggled);
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_EditAddressLoaded>(_onEditAddressLoaded);
    on<_SearchFocused>(_onSearchFocused);     // ✅ جديد
    on<_SearchUnfocused>(_onSearchUnfocused); // ✅ جديد
  }

  // ✅ جديد
  void _onSearchFocused(
    _SearchFocused event,
    Emitter<LocationPickerState> emit,
  ) {
    emit(state.copyWith(isSearchFocused: true));
  }

  // ✅ جديد
  void _onSearchUnfocused(
    _SearchUnfocused event,
    Emitter<LocationPickerState> emit,
  ) {
    emit(state.copyWith(isSearchFocused: false));
  }

  void _onEditAddressLoaded(
    _EditAddressLoaded event,
    Emitter<LocationPickerState> emit,
  ) {
    final a = event.address;
    emit(state.copyWith(
      latitude: a.latitude,
      longitude: a.longitude,
      address: a.fullAddress,
      nickname: a.nickname,
      phoneNumber: a.phoneNumber ?? '',
      isDefault: a.isDefault,
    ));
  }

  void _onNicknameChanged(
    _NicknameChanged event,
    Emitter<LocationPickerState> emit,
  ) {
    emit(state.copyWith(nickname: event.nickname));
  }

  void _onIsDefaultToggled(
    _IsDefaultToggled event,
    Emitter<LocationPickerState> emit,
  ) {
    emit(state.copyWith(isDefault: !state.isDefault));
  }

  void _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<LocationPickerState> emit,
  ) {
    emit(state.copyWith(
      phoneNumber: event.phoneNumber,
      phoneNumberError: FieldValidator.optionalPhone(event.phoneNumber),
    ));
  }

  void _onLanguageChanged(
    _LanguageChanged event,
    Emitter<LocationPickerState> emit,
  ) {
    language = event.language;
  }

  Future<void> _onCurrentLocationRequested(
    _CurrentLocationRequested event,
    Emitter<LocationPickerState> emit,
  ) async {
    emit(state.copyWith(
      isLoadingLocation: true,
      errorMessage: null,
      isPermissionDenied: false,
      isPermissionDeniedForever: false,
    ));

    try {
      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          emit(state.copyWith(
            isLoadingLocation: false,
            isPermissionDenied: true,
          ));
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        emit(state.copyWith(
          isLoadingLocation: false,
          isPermissionDeniedForever: true,
        ));
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 10),
        ),
      );

      emit(state.copyWith(
        isLoadingLocation: false,
        latitude: position.latitude,
        longitude: position.longitude,
        address: null,
      ));

      await _fetchAddress(
        emit,
        lat: position.latitude,
        lng: position.longitude,
      );
    } catch (e) {
      emit(state.copyWith(
        isLoadingLocation: false,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onMapTapped(
    _MapTapped event,
    Emitter<LocationPickerState> emit,
  ) async {
    emit(state.copyWith(
      latitude: event.lat,
      longitude: event.lng,
      address: null,
      searchResults: [],
      errorMessage: null,
      isSearchFocused: false, // ✅ إغلاق الـ search لما يدوس على الماب
    ));

    await _fetchAddress(emit, lat: event.lat, lng: event.lng);
  }

  Future<void> _onSearchChanged(
    _SearchChanged event,
    Emitter<LocationPickerState> emit,
  ) async {
    _debounceTimer?.cancel();

    if (event.query.trim().isEmpty) {
      emit(state.copyWith(
        searchQuery: '',
        searchResults: [],
        isSearching: false,
      ));
      return;
    }

    emit(state.copyWith(
      searchQuery: event.query,
      isSearching: true,
    ));

    final completer = Completer<void>();

    _debounceTimer = Timer(
      const Duration(milliseconds: 600),
      () async {
        if (isClosed) return;
        try {
          final results = await _nominatimService.search(
            query: event.query.trim(),
            language: language,
          );
          if (!isClosed) {
            emit(state.copyWith(
              searchResults: results,
              isSearching: false,
            ));
          }
        } catch (_) {
          if (!isClosed) {
            emit(state.copyWith(
              searchResults: [],
              isSearching: false,
            ));
          }
        }
        completer.complete();
      },
    );

    await completer.future;
  }

  void _onPlaceSelected(
    _PlaceSelected event,
    Emitter<LocationPickerState> emit,
  ) {
    emit(state.copyWith(
      latitude: event.place.lat,
      longitude: event.place.lng,
      address: event.place.shortName,
      searchResults: [],
      isSearching: false,
      searchQuery: '',
      isSearchFocused: false, // ✅ إغلاق الـ search بعد الاختيار
    ));
  }

  void _onSearchCleared(
    _SearchCleared event,
    Emitter<LocationPickerState> emit,
  ) {
    _debounceTimer?.cancel();
    emit(state.copyWith(
      searchQuery: '',
      searchResults: [],
      isSearching: false,
      isSearchFocused: false, // ✅ إغلاق الـ search لما يمسح
    ));
  }

  void _onLocationConfirmed(
    _LocationConfirmed event,
    Emitter<LocationPickerState> emit,
  ) {
    if (!state.hasLocation) return;
    emit(state.copyWith(isConfirmed: true));
  }

  Future<void> _fetchAddress(
    Emitter<LocationPickerState> emit, {
    required double lat,
    required double lng,
  }) async {
    try {
      final place = await _nominatimService.reverseGeocode(
        lat: lat,
        lng: lng,
        language: language,
      );
      if (place != null && !isClosed) {
        emit(state.copyWith(address: place.shortName));
      }
    } catch (_) {}
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}