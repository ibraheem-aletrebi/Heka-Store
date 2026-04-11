import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/order/data/models/order_details_model.dart';
import 'package:heka_store/Features/order/domain/use_cases/get_order_details_use_case.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'order_details_event.dart';
part 'order_details_state.dart';
part 'order_details_bloc.freezed.dart';

class OrderDetailsBloc extends Bloc<OrderDetailsEvent, OrderDetailsState> {
  final GetOrderDetailsUseCase _getOrderDetails;

  OrderDetailsBloc({required GetOrderDetailsUseCase getOrderDetails})
      : _getOrderDetails = getOrderDetails,
        super(const OrderDetailsState()) {
    on<_Loaded>(_onLoaded);
  }

  Future<void> _onLoaded(
    _Loaded event,
    Emitter<OrderDetailsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _getOrderDetails(event.orderId);
    result.when(
      onSuccess: (order) => emit(state.copyWith(
        isLoading: false,
        order: order,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }
}