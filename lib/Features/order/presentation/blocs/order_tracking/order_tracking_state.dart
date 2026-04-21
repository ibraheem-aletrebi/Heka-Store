import 'package:equatable/equatable.dart';
import 'package:heka_store/Features/order/data/models/order_tracking.dart';

abstract class OrderTrackingState extends Equatable {
  const OrderTrackingState();

  @override
  List<Object?> get props => [];
}

class OrderTrackingInitial extends OrderTrackingState {
  const OrderTrackingInitial();
}

class OrderTrackingLoading extends OrderTrackingState {
  const OrderTrackingLoading();
}

class OrderTrackingLoaded extends OrderTrackingState {
  final OrderTracking order;

  const OrderTrackingLoaded(this.order);

  @override
  List<Object?> get props => [order];
}

class OrderTrackingError extends OrderTrackingState {
  final String message;

  const OrderTrackingError(this.message);

  @override
  List<Object?> get props => [message];
}