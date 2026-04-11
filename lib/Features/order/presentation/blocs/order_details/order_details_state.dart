part of 'order_details_bloc.dart';

@freezed
class OrderDetailsState with _$OrderDetailsState {
  const factory OrderDetailsState({
    @Default(false) bool isLoading,
    OrderDetailsModel? order,
    ApiErrorModel? error,
  }) = _OrderDetailsState;
}