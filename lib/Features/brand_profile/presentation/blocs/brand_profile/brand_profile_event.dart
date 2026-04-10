part of 'brand_profile_bloc.dart';

@freezed
class BrandProfileEvent with _$BrandProfileEvent {
  const factory BrandProfileEvent.loaded({required int brandId}) = _Loaded;
}