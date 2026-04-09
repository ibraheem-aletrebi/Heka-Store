import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_order_model.freezed.dart';
part 'my_order_model.g.dart';

/// statusId mapping from API:
/// 0 = Pending (initial), 1 = Pending, 2 = Confirmed,
/// 3 = Processing, 4 = Shipped, 5 = Delivered, 6 = Cancelled
@freezed
class MyOrderModel with _$MyOrderModel {
  const factory MyOrderModel({
    required int id,
    required String orderNumber,
    required double totalAmount,
    required String status,
    required int statusId,
    required String orderDate,
    required int itemsCount,
    required String vendorName,
  }) = _MyOrderModel;

  factory MyOrderModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrderModelFromJson(json);
}

extension MyOrderModelX on MyOrderModel {
  /// Returns true for active/in-progress orders
  bool get isOngoing =>
      statusId == 0 || statusId == 1 || statusId == 2 ||
      statusId == 3 || statusId == 4;

  /// Returns true for terminal states
  bool get isCompleted => statusId == 5 || statusId == 6;
}