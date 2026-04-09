import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/order/data/models/my_order_model.dart';
import 'package:heka_store/Features/order/data/repo/my_orders_repository.dart';
import 'package:heka_store/core/services/remote/error/api_error_model.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';
part 'my_orders_bloc.freezed.dart';

class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  final GetMyOrdersUseCase _getMyOrdersUseCase;

  MyOrdersBloc({required GetMyOrdersUseCase getMyOrdersUseCase})
      : _getMyOrdersUseCase = getMyOrdersUseCase,
        super(const MyOrdersState()) {
    on<_Started>(_onStarted);
    on<_Refreshed>(_onRefreshed);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<MyOrdersState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, error: null));
    final result = await _getMyOrdersUseCase();
    result.when(
      onSuccess: (orders) => emit(state.copyWith(
        isLoading: false,
        orders: orders,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }

  Future<void> _onRefreshed(
    _Refreshed event,
    Emitter<MyOrdersState> emit,
  ) async {
    // Silent refresh — no loading spinner, keeps existing list visible
    final result = await _getMyOrdersUseCase();
    result.when(
      onSuccess: (orders) => emit(state.copyWith(orders: orders, error: null)),
      onError: (error) => emit(state.copyWith(error: error)),
    );
  }
}