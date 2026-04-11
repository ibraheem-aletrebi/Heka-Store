part of 'my_orders_bloc.dart';

@freezed
class MyOrdersEvent with _$MyOrdersEvent {
  const factory MyOrdersEvent.started() = _Started;
  const factory MyOrdersEvent.refreshed() = _Refreshed;
  const factory MyOrdersEvent.nextPageFetched() = _NextPageFetched;
}