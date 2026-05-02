import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/Features/order/data/models/order_item_model.dart';

part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
  const factory OrderModel({
    required int id,
    required String orderNumber,
    required double subTotal,
    required double shippingCost,
    required double totalAmount,
    required String status,
    required int statusId,
    required String paymentMethod,
    required String paymentStatus,
    required String orderDate,
    String? deliveredAt,
    required String shippingFirstName,
    required String shippingLastName,
    required String shippingPhone,
    required String shippingAddress,
    required double shippingLatitude,
    required double shippingLongitude,
    String? notes,
    required int vendorId,
    required String vendorName,
    required List<OrderItemModel> items,
    // Not in JSON — attached by the data source from data['payment']
    // when the order is an online payment order.
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false)
    String? paymentUrl,
  }) = _OrderModel;

  factory OrderModel.fromJson(Map<String, dynamic> json) =>
      _$OrderModelFromJson(json);
}