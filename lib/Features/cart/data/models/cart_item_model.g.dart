// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartItemModelImpl _$$CartItemModelImplFromJson(Map<String, dynamic> json) =>
    _$CartItemModelImpl(
      id: (json['id'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      productNameAr: json['productNameAr'] as String,
      productNameEn: json['productNameEn'] as String,
      productImage: json['productImage'] as String,
      price: (json['price'] as num).toDouble(),
      discountPrice: (json['discountPrice'] as num?)?.toDouble(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      stockAvailable: (json['stockAvailable'] as num).toInt(),
      inStock: json['inStock'] as bool,
      vendorId: (json['vendorId'] as num).toInt(),
      vendorName: json['vendorName'] as String,
      addedAt: json['addedAt'] as String,
      selectedVariants: (json['selectedVariants'] as List<dynamic>?)
              ?.map((e) =>
                  SelectedVariantModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      variantPriceAdjustment:
          (json['variantPriceAdjustment'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$CartItemModelImplToJson(_$CartItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productNameAr': instance.productNameAr,
      'productNameEn': instance.productNameEn,
      'productImage': instance.productImage,
      'price': instance.price,
      'discountPrice': instance.discountPrice,
      'unitPrice': instance.unitPrice,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'stockAvailable': instance.stockAvailable,
      'inStock': instance.inStock,
      'vendorId': instance.vendorId,
      'vendorName': instance.vendorName,
      'addedAt': instance.addedAt,
      'selectedVariants': instance.selectedVariants,
      'variantPriceAdjustment': instance.variantPriceAdjustment,
    };
