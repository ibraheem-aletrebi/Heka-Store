part of 'previous_viewed_products_bloc.dart';

@freezed
class PreviousViewedProductsState with _$PreviousViewedProductsState {
  const factory PreviousViewedProductsState.initial() = _Initial;

  const factory PreviousViewedProductsState.loading() = _Loading;

  const factory PreviousViewedProductsState.loaded({
    required List<ProductModel> products,
  }) = _Loaded;

  const factory PreviousViewedProductsState.error({
    required String message,
  }) = _Error;
}