part of 'brands_bloc.dart';

@freezed
class BrandsState with _$BrandsState {
  const factory BrandsState({
    @Default([])    List<BrandModel> brands,
    @Default(false) bool isLoading,
    @Default(false) bool isRefreshing,
    @Default(false) bool isPaginating,
    @Default(false) bool hasNextPage,
    @Default(1)     int  currentPage,
    ApiErrorModel?  error,
  }) = _BrandsState;
}