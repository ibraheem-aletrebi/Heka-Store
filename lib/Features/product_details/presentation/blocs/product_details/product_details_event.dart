part of 'product_details_bloc.dart';

@freezed
sealed class ProductDetailsEvent with _$ProductDetailsEvent {
  const factory ProductDetailsEvent.started(int productId) = _Started;
  const factory ProductDetailsEvent.variantOptionSelected(
    String typeName,
    ProductVariantOptionModel option,
  ) = _VariantOptionSelected;
  const factory ProductDetailsEvent.quantityIncremented() = _QuantityIncremented;
  const factory ProductDetailsEvent.quantityDecremented() = _QuantityDecremented;
  const factory ProductDetailsEvent.imagePageChanged(int index) = _ImagePageChanged;
}