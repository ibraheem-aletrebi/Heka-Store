import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';








part 'my_order_model.freezed.dart';
part 'my_order_model.g.dart';
@freezed
class MyOrdersResponseModel with _$MyOrdersResponseModel {
  const factory MyOrdersResponseModel({
    required List<MyOrderModel> items,
    required int totalCount,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
    required bool hasPreviousPage,
    required bool hasNextPage,
  }) = _MyOrdersResponseModel;

  factory MyOrdersResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrdersResponseModelFromJson(json);
}




/// statusId mapping from API:
/// 0 = Pending (initial), 1 = Pending, 2 = Confirmed,
/// 3 = Processing, 4 = Shipped, 5 = Delivered, 6 = Cancelled
/// 

@freezed
@HiveType(typeId: 47)
class MyOrderModel with _$MyOrderModel {
  const factory MyOrderModel({
    @HiveField(0) required int id,
    @HiveField(1) required String orderNumber,
    @HiveField(2) required double totalAmount,
    @HiveField(3) required String status,
    @HiveField(4) required int statusId,
    @HiveField(5) required String orderDate,
    @HiveField(6) required int itemsCount,
    @HiveField(7) required String vendorName,
  }) = _MyOrderModel;

  factory MyOrderModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrderModelFromJson(json);
}

extension MyOrderModelX on MyOrderModel {
  bool get isOngoing =>
      statusId == 0 || statusId == 1 || statusId == 2 ||
      statusId == 3 || statusId == 4;

  bool get isCompleted => statusId == 5 || statusId == 6;
}