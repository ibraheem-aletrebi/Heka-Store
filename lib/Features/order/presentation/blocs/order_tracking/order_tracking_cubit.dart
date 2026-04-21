import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/Features/order/data/repo/order_repository.dart';
import 'order_tracking_state.dart';

class OrderTrackingCubit extends Cubit<OrderTrackingState> {
  final OrderRepository _repo;
  Timer? _pollingTimer;

  /// Poll interval — set to null to disable auto-refresh.
  static const Duration _pollInterval = Duration(seconds: 15);

  OrderTrackingCubit({required OrderRepository repo})
    : _repo = repo,
      super(const OrderTrackingInitial());

  // ── Public API ────────────────────────────────────────────────────────────

  /// Fetch the order once and start polling for live updates.
  Future<void> trackOrder(String orderNumber) async {
    _stopPolling();
    await _fetch(orderNumber);
    _startPolling(orderNumber);
  }

  /// Force a one-off refresh without resetting the polling timer.
  Future<void> refresh(String orderNumber) => _fetch(orderNumber, silent: true);

  /// Stop polling and reset to the initial state.
  void reset() {
    _stopPolling();
    emit(const OrderTrackingInitial());
  }

  @override
  Future<void> close() {
    _stopPolling();
    return super.close();
  }

  // ── Private helpers ───────────────────────────────────────────────────────

  Future<void> _fetch(String orderNumber, {bool silent = false}) async {
    // Only show the full loading spinner on the first (non-silent) fetch.
    if (!silent) emit(const OrderTrackingLoading());

    final result = await _repo.trackOrder(orderNumber.trim());

    result.when(
      onSuccess: (order) {
        emit(OrderTrackingLoaded(order));
        if (order.status.toLowerCase() == 'delivered') _stopPolling();
      },
      onError: (error) {
        emit(OrderTrackingError(error.serverMessage ?? ''));
        if (!silent || state is! OrderTrackingLoaded) {
          emit(
            OrderTrackingError(
              error.toString().replaceFirst('Exception: ', ''),
            ),
          );
        }
      },
    );
  }

  void _startPolling(String orderNumber) {
    _pollingTimer = Timer.periodic(_pollInterval, (_) {
      if (isClosed) return;
      _fetch(orderNumber, silent: true);
    });
  }

  void _stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }
}
