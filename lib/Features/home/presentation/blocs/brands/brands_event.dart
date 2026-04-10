part of 'brands_bloc.dart';

@freezed
class BrandsEvent with _$BrandsEvent {
  const factory BrandsEvent.loaded()   = _Loaded;
  const factory BrandsEvent.reloaded() = _Reloaded;
  const factory BrandsEvent.nextPage() = _NextPage;
}