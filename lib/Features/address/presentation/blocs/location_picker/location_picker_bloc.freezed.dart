// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_picker_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocationPickerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPickerEventCopyWith<$Res> {
  factory $LocationPickerEventCopyWith(
          LocationPickerEvent value, $Res Function(LocationPickerEvent) then) =
      _$LocationPickerEventCopyWithImpl<$Res, LocationPickerEvent>;
}

/// @nodoc
class _$LocationPickerEventCopyWithImpl<$Res, $Val extends LocationPickerEvent>
    implements $LocationPickerEventCopyWith<$Res> {
  _$LocationPickerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentLocationRequestedImplCopyWith<$Res> {
  factory _$$CurrentLocationRequestedImplCopyWith(
          _$CurrentLocationRequestedImpl value,
          $Res Function(_$CurrentLocationRequestedImpl) then) =
      __$$CurrentLocationRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentLocationRequestedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res,
        _$CurrentLocationRequestedImpl>
    implements _$$CurrentLocationRequestedImplCopyWith<$Res> {
  __$$CurrentLocationRequestedImplCopyWithImpl(
      _$CurrentLocationRequestedImpl _value,
      $Res Function(_$CurrentLocationRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CurrentLocationRequestedImpl implements _CurrentLocationRequested {
  const _$CurrentLocationRequestedImpl();

  @override
  String toString() {
    return 'LocationPickerEvent.currentLocationRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentLocationRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return currentLocationRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return currentLocationRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (currentLocationRequested != null) {
      return currentLocationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return currentLocationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return currentLocationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (currentLocationRequested != null) {
      return currentLocationRequested(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocationRequested implements LocationPickerEvent {
  const factory _CurrentLocationRequested() = _$CurrentLocationRequestedImpl;
}

/// @nodoc
abstract class _$$MapTappedImplCopyWith<$Res> {
  factory _$$MapTappedImplCopyWith(
          _$MapTappedImpl value, $Res Function(_$MapTappedImpl) then) =
      __$$MapTappedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$MapTappedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$MapTappedImpl>
    implements _$$MapTappedImplCopyWith<$Res> {
  __$$MapTappedImplCopyWithImpl(
      _$MapTappedImpl _value, $Res Function(_$MapTappedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$MapTappedImpl(
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MapTappedImpl implements _MapTapped {
  const _$MapTappedImpl(this.lat, this.lng);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'LocationPickerEvent.mapTapped(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTappedImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTappedImplCopyWith<_$MapTappedImpl> get copyWith =>
      __$$MapTappedImplCopyWithImpl<_$MapTappedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return mapTapped(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return mapTapped?.call(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (mapTapped != null) {
      return mapTapped(lat, lng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return mapTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return mapTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (mapTapped != null) {
      return mapTapped(this);
    }
    return orElse();
  }
}

abstract class _MapTapped implements LocationPickerEvent {
  const factory _MapTapped(final double lat, final double lng) =
      _$MapTappedImpl;

  double get lat;
  double get lng;
  @JsonKey(ignore: true)
  _$$MapTappedImplCopyWith<_$MapTappedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
          _$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
      _$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'LocationPickerEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return searchChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements LocationPickerEvent {
  const factory _SearchChanged(final String query) = _$SearchChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlaceSelectedImplCopyWith<$Res> {
  factory _$$PlaceSelectedImplCopyWith(
          _$PlaceSelectedImpl value, $Res Function(_$PlaceSelectedImpl) then) =
      __$$PlaceSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NominatimPlace place});
}

/// @nodoc
class __$$PlaceSelectedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$PlaceSelectedImpl>
    implements _$$PlaceSelectedImplCopyWith<$Res> {
  __$$PlaceSelectedImplCopyWithImpl(
      _$PlaceSelectedImpl _value, $Res Function(_$PlaceSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_$PlaceSelectedImpl(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as NominatimPlace,
    ));
  }
}

/// @nodoc

class _$PlaceSelectedImpl implements _PlaceSelected {
  const _$PlaceSelectedImpl(this.place);

  @override
  final NominatimPlace place;

  @override
  String toString() {
    return 'LocationPickerEvent.placeSelected(place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceSelectedImpl &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceSelectedImplCopyWith<_$PlaceSelectedImpl> get copyWith =>
      __$$PlaceSelectedImplCopyWithImpl<_$PlaceSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return placeSelected(place);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return placeSelected?.call(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (placeSelected != null) {
      return placeSelected(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return placeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return placeSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (placeSelected != null) {
      return placeSelected(this);
    }
    return orElse();
  }
}

abstract class _PlaceSelected implements LocationPickerEvent {
  const factory _PlaceSelected(final NominatimPlace place) =
      _$PlaceSelectedImpl;

  NominatimPlace get place;
  @JsonKey(ignore: true)
  _$$PlaceSelectedImplCopyWith<_$PlaceSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchClearedImplCopyWith<$Res> {
  factory _$$SearchClearedImplCopyWith(
          _$SearchClearedImpl value, $Res Function(_$SearchClearedImpl) then) =
      __$$SearchClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchClearedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$SearchClearedImpl>
    implements _$$SearchClearedImplCopyWith<$Res> {
  __$$SearchClearedImplCopyWithImpl(
      _$SearchClearedImpl _value, $Res Function(_$SearchClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchClearedImpl implements _SearchCleared {
  const _$SearchClearedImpl();

  @override
  String toString() {
    return 'LocationPickerEvent.searchCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return searchCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return searchCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (searchCleared != null) {
      return searchCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return searchCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return searchCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (searchCleared != null) {
      return searchCleared(this);
    }
    return orElse();
  }
}

abstract class _SearchCleared implements LocationPickerEvent {
  const factory _SearchCleared() = _$SearchClearedImpl;
}

/// @nodoc
abstract class _$$LocationConfirmedImplCopyWith<$Res> {
  factory _$$LocationConfirmedImplCopyWith(_$LocationConfirmedImpl value,
          $Res Function(_$LocationConfirmedImpl) then) =
      __$$LocationConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LocationConfirmedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$LocationConfirmedImpl>
    implements _$$LocationConfirmedImplCopyWith<$Res> {
  __$$LocationConfirmedImplCopyWithImpl(_$LocationConfirmedImpl _value,
      $Res Function(_$LocationConfirmedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LocationConfirmedImpl implements _LocationConfirmed {
  const _$LocationConfirmedImpl();

  @override
  String toString() {
    return 'LocationPickerEvent.locationConfirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LocationConfirmedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return locationConfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return locationConfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (locationConfirmed != null) {
      return locationConfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return locationConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return locationConfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (locationConfirmed != null) {
      return locationConfirmed(this);
    }
    return orElse();
  }
}

abstract class _LocationConfirmed implements LocationPickerEvent {
  const factory _LocationConfirmed() = _$LocationConfirmedImpl;
}

/// @nodoc
abstract class _$$LanguageChangedImplCopyWith<$Res> {
  factory _$$LanguageChangedImplCopyWith(_$LanguageChangedImpl value,
          $Res Function(_$LanguageChangedImpl) then) =
      __$$LanguageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String language});
}

/// @nodoc
class __$$LanguageChangedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$LanguageChangedImpl>
    implements _$$LanguageChangedImplCopyWith<$Res> {
  __$$LanguageChangedImplCopyWithImpl(
      _$LanguageChangedImpl _value, $Res Function(_$LanguageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
  }) {
    return _then(_$LanguageChangedImpl(
      null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageChangedImpl implements _LanguageChanged {
  const _$LanguageChangedImpl(this.language);

  @override
  final String language;

  @override
  String toString() {
    return 'LocationPickerEvent.languageChanged(language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageChangedImpl &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hash(runtimeType, language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      __$$LanguageChangedImplCopyWithImpl<_$LanguageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return languageChanged(language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return languageChanged?.call(language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return languageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return languageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (languageChanged != null) {
      return languageChanged(this);
    }
    return orElse();
  }
}

abstract class _LanguageChanged implements LocationPickerEvent {
  const factory _LanguageChanged(final String language) = _$LanguageChangedImpl;

  String get language;
  @JsonKey(ignore: true)
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NicknameChangedImplCopyWith<$Res> {
  factory _$$NicknameChangedImplCopyWith(_$NicknameChangedImpl value,
          $Res Function(_$NicknameChangedImpl) then) =
      __$$NicknameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$NicknameChangedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$NicknameChangedImpl>
    implements _$$NicknameChangedImplCopyWith<$Res> {
  __$$NicknameChangedImplCopyWithImpl(
      _$NicknameChangedImpl _value, $Res Function(_$NicknameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$NicknameChangedImpl(
      null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NicknameChangedImpl implements _NicknameChanged {
  const _$NicknameChangedImpl(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'LocationPickerEvent.nicknameChanged(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameChangedImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      __$$NicknameChangedImplCopyWithImpl<_$NicknameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return nicknameChanged?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return nicknameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class _NicknameChanged implements LocationPickerEvent {
  const factory _NicknameChanged(final String nickname) = _$NicknameChangedImpl;

  String get nickname;
  @JsonKey(ignore: true)
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsDefaultToggledImplCopyWith<$Res> {
  factory _$$IsDefaultToggledImplCopyWith(_$IsDefaultToggledImpl value,
          $Res Function(_$IsDefaultToggledImpl) then) =
      __$$IsDefaultToggledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsDefaultToggledImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$IsDefaultToggledImpl>
    implements _$$IsDefaultToggledImplCopyWith<$Res> {
  __$$IsDefaultToggledImplCopyWithImpl(_$IsDefaultToggledImpl _value,
      $Res Function(_$IsDefaultToggledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsDefaultToggledImpl implements _IsDefaultToggled {
  const _$IsDefaultToggledImpl();

  @override
  String toString() {
    return 'LocationPickerEvent.isDefaultToggled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsDefaultToggledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return isDefaultToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return isDefaultToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (isDefaultToggled != null) {
      return isDefaultToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return isDefaultToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return isDefaultToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (isDefaultToggled != null) {
      return isDefaultToggled(this);
    }
    return orElse();
  }
}

abstract class _IsDefaultToggled implements LocationPickerEvent {
  const factory _IsDefaultToggled() = _$IsDefaultToggledImpl;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LocationPickerEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements LocationPickerEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditAddressLoadedImplCopyWith<$Res> {
  factory _$$EditAddressLoadedImplCopyWith(_$EditAddressLoadedImpl value,
          $Res Function(_$EditAddressLoadedImpl) then) =
      __$$EditAddressLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel address});

  $AddressModelCopyWith<$Res> get address;
}

/// @nodoc
class __$$EditAddressLoadedImplCopyWithImpl<$Res>
    extends _$LocationPickerEventCopyWithImpl<$Res, _$EditAddressLoadedImpl>
    implements _$$EditAddressLoadedImplCopyWith<$Res> {
  __$$EditAddressLoadedImplCopyWithImpl(_$EditAddressLoadedImpl _value,
      $Res Function(_$EditAddressLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$EditAddressLoadedImpl(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res> get address {
    return $AddressModelCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$EditAddressLoadedImpl implements _EditAddressLoaded {
  const _$EditAddressLoadedImpl(this.address);

  @override
  final AddressModel address;

  @override
  String toString() {
    return 'LocationPickerEvent.editAddressLoaded(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditAddressLoadedImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditAddressLoadedImplCopyWith<_$EditAddressLoadedImpl> get copyWith =>
      __$$EditAddressLoadedImplCopyWithImpl<_$EditAddressLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() currentLocationRequested,
    required TResult Function(double lat, double lng) mapTapped,
    required TResult Function(String query) searchChanged,
    required TResult Function(NominatimPlace place) placeSelected,
    required TResult Function() searchCleared,
    required TResult Function() locationConfirmed,
    required TResult Function(String language) languageChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() isDefaultToggled,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(AddressModel address) editAddressLoaded,
  }) {
    return editAddressLoaded(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? currentLocationRequested,
    TResult? Function(double lat, double lng)? mapTapped,
    TResult? Function(String query)? searchChanged,
    TResult? Function(NominatimPlace place)? placeSelected,
    TResult? Function()? searchCleared,
    TResult? Function()? locationConfirmed,
    TResult? Function(String language)? languageChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? isDefaultToggled,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(AddressModel address)? editAddressLoaded,
  }) {
    return editAddressLoaded?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? currentLocationRequested,
    TResult Function(double lat, double lng)? mapTapped,
    TResult Function(String query)? searchChanged,
    TResult Function(NominatimPlace place)? placeSelected,
    TResult Function()? searchCleared,
    TResult Function()? locationConfirmed,
    TResult Function(String language)? languageChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? isDefaultToggled,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(AddressModel address)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (editAddressLoaded != null) {
      return editAddressLoaded(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentLocationRequested value)
        currentLocationRequested,
    required TResult Function(_MapTapped value) mapTapped,
    required TResult Function(_SearchChanged value) searchChanged,
    required TResult Function(_PlaceSelected value) placeSelected,
    required TResult Function(_SearchCleared value) searchCleared,
    required TResult Function(_LocationConfirmed value) locationConfirmed,
    required TResult Function(_LanguageChanged value) languageChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_IsDefaultToggled value) isDefaultToggled,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EditAddressLoaded value) editAddressLoaded,
  }) {
    return editAddressLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentLocationRequested value)?
        currentLocationRequested,
    TResult? Function(_MapTapped value)? mapTapped,
    TResult? Function(_SearchChanged value)? searchChanged,
    TResult? Function(_PlaceSelected value)? placeSelected,
    TResult? Function(_SearchCleared value)? searchCleared,
    TResult? Function(_LocationConfirmed value)? locationConfirmed,
    TResult? Function(_LanguageChanged value)? languageChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EditAddressLoaded value)? editAddressLoaded,
  }) {
    return editAddressLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentLocationRequested value)? currentLocationRequested,
    TResult Function(_MapTapped value)? mapTapped,
    TResult Function(_SearchChanged value)? searchChanged,
    TResult Function(_PlaceSelected value)? placeSelected,
    TResult Function(_SearchCleared value)? searchCleared,
    TResult Function(_LocationConfirmed value)? locationConfirmed,
    TResult Function(_LanguageChanged value)? languageChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_IsDefaultToggled value)? isDefaultToggled,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EditAddressLoaded value)? editAddressLoaded,
    required TResult orElse(),
  }) {
    if (editAddressLoaded != null) {
      return editAddressLoaded(this);
    }
    return orElse();
  }
}

abstract class _EditAddressLoaded implements LocationPickerEvent {
  const factory _EditAddressLoaded(final AddressModel address) =
      _$EditAddressLoadedImpl;

  AddressModel get address;
  @JsonKey(ignore: true)
  _$$EditAddressLoadedImplCopyWith<_$EditAddressLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationPickerState {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  List<NominatimPlace> get searchResults => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  bool get isLoadingLocation => throw _privateConstructorUsedError;
  bool get isConfirmed => throw _privateConstructorUsedError;
  bool get isPermissionDenied => throw _privateConstructorUsedError;
  bool get isPermissionDeniedForever => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  bool get isDefault => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  ValidationKey? get phoneNumberError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationPickerStateCopyWith<LocationPickerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationPickerStateCopyWith<$Res> {
  factory $LocationPickerStateCopyWith(
          LocationPickerState value, $Res Function(LocationPickerState) then) =
      _$LocationPickerStateCopyWithImpl<$Res, LocationPickerState>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? address,
      String searchQuery,
      List<NominatimPlace> searchResults,
      bool isSearching,
      bool isLoadingLocation,
      bool isConfirmed,
      bool isPermissionDenied,
      bool isPermissionDeniedForever,
      String nickname,
      bool isDefault,
      String phoneNumber,
      ValidationKey? phoneNumberError,
      String? errorMessage});
}

/// @nodoc
class _$LocationPickerStateCopyWithImpl<$Res, $Val extends LocationPickerState>
    implements $LocationPickerStateCopyWith<$Res> {
  _$LocationPickerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
    Object? searchQuery = null,
    Object? searchResults = null,
    Object? isSearching = null,
    Object? isLoadingLocation = null,
    Object? isConfirmed = null,
    Object? isPermissionDenied = null,
    Object? isPermissionDeniedForever = null,
    Object? nickname = null,
    Object? isDefault = null,
    Object? phoneNumber = null,
    Object? phoneNumberError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<NominatimPlace>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingLocation: null == isLoadingLocation
          ? _value.isLoadingLocation
          : isLoadingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmed: null == isConfirmed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionDenied: null == isPermissionDenied
          ? _value.isPermissionDenied
          : isPermissionDenied // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionDeniedForever: null == isPermissionDeniedForever
          ? _value.isPermissionDeniedForever
          : isPermissionDeniedForever // ignore: cast_nullable_to_non_nullable
              as bool,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberError: freezed == phoneNumberError
          ? _value.phoneNumberError
          : phoneNumberError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationPickerStateImplCopyWith<$Res>
    implements $LocationPickerStateCopyWith<$Res> {
  factory _$$LocationPickerStateImplCopyWith(_$LocationPickerStateImpl value,
          $Res Function(_$LocationPickerStateImpl) then) =
      __$$LocationPickerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      String? address,
      String searchQuery,
      List<NominatimPlace> searchResults,
      bool isSearching,
      bool isLoadingLocation,
      bool isConfirmed,
      bool isPermissionDenied,
      bool isPermissionDeniedForever,
      String nickname,
      bool isDefault,
      String phoneNumber,
      ValidationKey? phoneNumberError,
      String? errorMessage});
}

/// @nodoc
class __$$LocationPickerStateImplCopyWithImpl<$Res>
    extends _$LocationPickerStateCopyWithImpl<$Res, _$LocationPickerStateImpl>
    implements _$$LocationPickerStateImplCopyWith<$Res> {
  __$$LocationPickerStateImplCopyWithImpl(_$LocationPickerStateImpl _value,
      $Res Function(_$LocationPickerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? address = freezed,
    Object? searchQuery = null,
    Object? searchResults = null,
    Object? isSearching = null,
    Object? isLoadingLocation = null,
    Object? isConfirmed = null,
    Object? isPermissionDenied = null,
    Object? isPermissionDeniedForever = null,
    Object? nickname = null,
    Object? isDefault = null,
    Object? phoneNumber = null,
    Object? phoneNumberError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$LocationPickerStateImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<NominatimPlace>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingLocation: null == isLoadingLocation
          ? _value.isLoadingLocation
          : isLoadingLocation // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmed: null == isConfirmed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionDenied: null == isPermissionDenied
          ? _value.isPermissionDenied
          : isPermissionDenied // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionDeniedForever: null == isPermissionDeniedForever
          ? _value.isPermissionDeniedForever
          : isPermissionDeniedForever // ignore: cast_nullable_to_non_nullable
              as bool,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumberError: freezed == phoneNumberError
          ? _value.phoneNumberError
          : phoneNumberError // ignore: cast_nullable_to_non_nullable
              as ValidationKey?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LocationPickerStateImpl extends _LocationPickerState {
  const _$LocationPickerStateImpl(
      {this.latitude,
      this.longitude,
      this.address,
      this.searchQuery = '',
      final List<NominatimPlace> searchResults = const [],
      this.isSearching = false,
      this.isLoadingLocation = false,
      this.isConfirmed = false,
      this.isPermissionDenied = false,
      this.isPermissionDeniedForever = false,
      this.nickname = '',
      this.isDefault = false,
      this.phoneNumber = '',
      this.phoneNumberError,
      this.errorMessage})
      : _searchResults = searchResults,
        super._();

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final String? address;
  @override
  @JsonKey()
  final String searchQuery;
  final List<NominatimPlace> _searchResults;
  @override
  @JsonKey()
  List<NominatimPlace> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  @JsonKey()
  final bool isSearching;
  @override
  @JsonKey()
  final bool isLoadingLocation;
  @override
  @JsonKey()
  final bool isConfirmed;
  @override
  @JsonKey()
  final bool isPermissionDenied;
  @override
  @JsonKey()
  final bool isPermissionDeniedForever;
  @override
  @JsonKey()
  final String nickname;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  final ValidationKey? phoneNumberError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LocationPickerState(latitude: $latitude, longitude: $longitude, address: $address, searchQuery: $searchQuery, searchResults: $searchResults, isSearching: $isSearching, isLoadingLocation: $isLoadingLocation, isConfirmed: $isConfirmed, isPermissionDenied: $isPermissionDenied, isPermissionDeniedForever: $isPermissionDeniedForever, nickname: $nickname, isDefault: $isDefault, phoneNumber: $phoneNumber, phoneNumberError: $phoneNumberError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationPickerStateImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.isLoadingLocation, isLoadingLocation) ||
                other.isLoadingLocation == isLoadingLocation) &&
            (identical(other.isConfirmed, isConfirmed) ||
                other.isConfirmed == isConfirmed) &&
            (identical(other.isPermissionDenied, isPermissionDenied) ||
                other.isPermissionDenied == isPermissionDenied) &&
            (identical(other.isPermissionDeniedForever,
                    isPermissionDeniedForever) ||
                other.isPermissionDeniedForever == isPermissionDeniedForever) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.phoneNumberError, phoneNumberError) ||
                other.phoneNumberError == phoneNumberError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      address,
      searchQuery,
      const DeepCollectionEquality().hash(_searchResults),
      isSearching,
      isLoadingLocation,
      isConfirmed,
      isPermissionDenied,
      isPermissionDeniedForever,
      nickname,
      isDefault,
      phoneNumber,
      phoneNumberError,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationPickerStateImplCopyWith<_$LocationPickerStateImpl> get copyWith =>
      __$$LocationPickerStateImplCopyWithImpl<_$LocationPickerStateImpl>(
          this, _$identity);
}

abstract class _LocationPickerState extends LocationPickerState {
  const factory _LocationPickerState(
      {final double? latitude,
      final double? longitude,
      final String? address,
      final String searchQuery,
      final List<NominatimPlace> searchResults,
      final bool isSearching,
      final bool isLoadingLocation,
      final bool isConfirmed,
      final bool isPermissionDenied,
      final bool isPermissionDeniedForever,
      final String nickname,
      final bool isDefault,
      final String phoneNumber,
      final ValidationKey? phoneNumberError,
      final String? errorMessage}) = _$LocationPickerStateImpl;
  const _LocationPickerState._() : super._();

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  String? get address;
  @override
  String get searchQuery;
  @override
  List<NominatimPlace> get searchResults;
  @override
  bool get isSearching;
  @override
  bool get isLoadingLocation;
  @override
  bool get isConfirmed;
  @override
  bool get isPermissionDenied;
  @override
  bool get isPermissionDeniedForever;
  @override
  String get nickname;
  @override
  bool get isDefault;
  @override
  String get phoneNumber;
  @override
  ValidationKey? get phoneNumberError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$LocationPickerStateImplCopyWith<_$LocationPickerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
