part of 'wishlist_bloc.dart';

@freezed
sealed class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.loaded() = _Loaded;
  const factory WishlistEvent.toggled(int productId) = _Toggled;
  const factory WishlistEvent.nextPageFetched() = _NextPageFetched;
}