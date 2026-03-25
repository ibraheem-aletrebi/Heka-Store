import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required int id,
    required int productId,
    required String productNameAr,
    required String productNameEn,
    required String productImage,
    required double price,
    required double discountPrice,
    required double unitPrice,
    required int quantity,
    required double totalPrice,
    required int stockAvailable,
    required bool inStock,
    required int vendorId,
    required String vendorName,
    required String addedAt,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}