part of 'product_details_bloc.dart';

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    @Default(false) bool isLoading,
    ProductDetailsModel? product,
    @Default({}) Map<String, ProductVariantOptionModel> selectedOptions,
    @Default(1) int quantity,
    @Default(0) int currentImageIndex,
    ApiErrorModel? error,
  }) = _ProductDetailsState;

  const ProductDetailsState._();

  double get totalVariantAdjustment => selectedOptions.values
      .fold(0.0, (sum, o) => sum + o.priceAdjustment);

  double get totalPrice =>
      ((product?.finalPrice ?? 0) + totalVariantAdjustment) * quantity;

  bool get allVariantsSelected {
    if (product == null) return false;
    return product!.variants
        .every((v) => selectedOptions.containsKey(v.typeName));
  }
}