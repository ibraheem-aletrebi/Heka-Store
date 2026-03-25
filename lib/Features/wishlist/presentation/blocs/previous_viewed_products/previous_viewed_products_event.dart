part of 'previous_viewed_products_bloc.dart';

@freezed
class PreviousViewedProductsEvent with _$PreviousViewedProductsEvent {
  const factory PreviousViewedProductsEvent.getProducts() = _GetProducts;
  const factory PreviousViewedProductsEvent.addProduct( {
    required ProductModel product,
  }) = _AddProduct;

  const factory PreviousViewedProductsEvent.removeProduct({
    required int productId,
  }) = _RemoveProduct;

  const factory PreviousViewedProductsEvent.clear() = _Clear;
}