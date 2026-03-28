part of 'similar_products_bloc.dart';

@freezed
class SimilarProductsState with _$SimilarProductsState {
  const factory SimilarProductsState({
    @Default(false) bool isLoading,
    @Default([]) List<ProductModel> products,
    ApiErrorModel? error,
  }) = _SimilarProductsState;

  const SimilarProductsState._();

  bool get hasProducts => products.isNotEmpty;
}