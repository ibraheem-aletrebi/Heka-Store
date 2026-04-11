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
    on<_NextPageFetched>(_onNextPageFetched);
  }

  Future<void> _onStarted(
    _Started event,
    Emitter<MyOrdersState> emit,
  ) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true, error: null));
    await _fetchOrders(emit, pageNumber: 1);
  }

  Future<void> _onRefreshed(
    _Refreshed event,
    Emitter<MyOrdersState> emit,
  ) async {
    emit(state.copyWith(isRefreshing: true, error: null));
    await _fetchOrders(emit, pageNumber: 1);
    emit(state.copyWith(isRefreshing: false));
  }

  Future<void> _onNextPageFetched(
    _NextPageFetched event,
    Emitter<MyOrdersState> emit,
  ) async {
    if (state.isLoadingMore || !state.hasNextPage) return;
    emit(state.copyWith(isLoadingMore: true, error: null));

    final nextPage = state.currentPage + 1;
    final result = await _getMyOrdersUseCase(pageNumber: nextPage);

    result.when(
      onSuccess: (response) {
        final newOrders = response.items.where(
          (newItem) => !state.orders.any((e) => e.id == newItem.id),
        );
        emit(state.copyWith(
          isLoadingMore: false,
          orders: [...state.orders, ...newOrders],
          currentPage: response.pageNumber,
          hasNextPage: response.hasNextPage,
        ));
      },
      onError: (error) => emit(state.copyWith(
        isLoadingMore: false,
        error: error,
      )),
    );
  }

  Future<void> _fetchOrders(
    Emitter<MyOrdersState> emit, {
    required int pageNumber,
  }) async {
    final result = await _getMyOrdersUseCase(pageNumber: pageNumber);
    result.when(
      onSuccess: (response) => emit(state.copyWith(
        isLoading: false,
        orders: response.items,
        currentPage: response.pageNumber,
        hasNextPage: response.hasNextPage,
        error: null,
      )),
      onError: (error) => emit(state.copyWith(
        isLoading: false,
        error: error,
      )),
    );
  }
}