import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
@HiveType(typeId: 44)
class OrderDetailsModel with _$OrderDetailsModel {
  const factory OrderDetailsModel({
    @HiveField(0) required int id,
    @HiveField(1) required String orderNumber,
    @HiveField(2) required double subTotal,
    @HiveField(3) required double shippingCost,
    @HiveField(4) required double totalAmount,
    @HiveField(5) required String status,
    @HiveField(6) required int statusId,
    @HiveField(7) required String paymentMethod,
    @HiveField(8) required String paymentStatus,
    @HiveField(9) required String orderDate,
    @HiveField(10) String? deliveredAt,
    @HiveField(11) required String shippingFirstName,
    @HiveField(12) required String shippingLastName,
    @HiveField(13) required String shippingPhone,
    @HiveField(14) required String shippingAddress,
    @HiveField(15) required double shippingLatitude,
    @HiveField(16) required double shippingLongitude,
    @HiveField(17) String? notes,
    @HiveField(18) required int vendorId,
    @HiveField(19) required String vendorName,
    @HiveField(20) required List<OrderItemModel> items,
  }) = _OrderDetailsModel;

  factory OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailsModelFromJson(json);
}

@freezed
@HiveType(typeId: 43)
class OrderItemModel with _$OrderItemModel {
  const factory OrderItemModel({
    @HiveField(0) required int id,
    @HiveField(1) required int productId,
    @HiveField(2) required String productNameAr,
    @HiveField(3) required String productNameEn,
    @HiveField(4) required String productImage,
    @HiveField(5) required int quantity,
    @HiveField(6) required double unitPrice,
    @HiveField(7) required double totalPrice,
    @HiveField(8) int? variantId,
    @HiveField(9) String? variantTypeName,
    @HiveField(10) String? variantValue,
    @HiveField(11) String? variantColorHex,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, dynamic> json) =>
      _$OrderItemModelFromJson(json);
}