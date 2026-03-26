part of 'categories_bloc.dart';

@freezed
class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.loaded() = _Loaded;
  const factory CategoriesEvent.reloaded() = _Reloaded;
  const factory CategoriesEvent.nextPageFetched() = _NextPageFetched;
}