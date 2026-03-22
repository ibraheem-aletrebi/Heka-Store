
import 'package:freezed_annotation/freezed_annotation.dart';
import 'wishlist_item_model.dart';

part 'wishlist_response_model.freezed.dart';
part 'wishlist_response_model.g.dart';

@freezed
class WishlistResponseModel with _$WishlistResponseModel {
  const factory WishlistResponseModel({
    required List<WishlistItemModel> items,
    required int totalCount,
    required int pageNumber,
    required int pageSize,
    required int totalPages,
  }) = _WishlistResponseModel;

  factory WishlistResponseModel.fromJson(Map<String, dynamic> json) =>
      _$WishlistResponseModelFromJson(json);
}