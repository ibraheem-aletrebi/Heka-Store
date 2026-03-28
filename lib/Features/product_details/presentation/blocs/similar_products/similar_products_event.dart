part of 'similar_products_bloc.dart';

@freezed
sealed class SimilarProductsEvent with _$SimilarProductsEvent {
  const factory SimilarProductsEvent.started({
    required int categoryId,
    required int excludeProductId,
  }) = _Started;
}