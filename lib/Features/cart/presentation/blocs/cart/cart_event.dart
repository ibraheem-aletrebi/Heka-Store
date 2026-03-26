part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.loaded() = _Loaded;
  const factory CartEvent.reLoaded() = _ReLoaded;
  const factory CartEvent.itemAdded({
    required int productId,
    required int quantity,
  }) = _ItemAdded;
  const factory CartEvent.itemUpdated({
    required int cartItemId,
    required int quantity,
  }) = _ItemUpdated;
  const factory CartEvent.itemRemoved({required int cartItemId}) = _ItemRemoved;
  const factory CartEvent.countFetched() = _CountFetched;
  const factory CartEvent.cleared() = _Cleared;
}