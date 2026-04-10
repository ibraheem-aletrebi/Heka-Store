part of 'brand_profile_bloc.dart';

@freezed
class BrandProfileState with _$BrandProfileState {
  const factory BrandProfileState({
    BrandProfileModel? brand,
    @Default([]) List<BrandProductModel> products,
    @Default(false) bool isLoading,
    @Default(false) bool isProductsLoading,
    ApiErrorModel? error,
  }) = _BrandProfileState;
}