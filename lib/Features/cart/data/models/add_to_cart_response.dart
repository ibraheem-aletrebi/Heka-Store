import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_item_model.dart';
part 'add_to_cart_response.freezed.dart';
part 'add_to_cart_response.g.dart';

@freezed
class AddToCartResponse with _$AddToCartResponse {
  const factory AddToCartResponse({
    required bool success,
    required CartItemModel data,  
    required String message,
    int? count,
  }) = _AddToCartResponse;

  factory AddToCartResponse.fromJson(Map<String, dynamic> json) =>
      _$AddToCartResponseFromJson(json);
}