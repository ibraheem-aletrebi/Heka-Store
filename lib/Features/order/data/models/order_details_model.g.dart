// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OrderDetailsModelAdapter extends TypeAdapter<OrderDetailsModel> {
  @override
  final int typeId = 44;

  @override
  OrderDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderDetailsModel(
      id: fields[0] as int,
      orderNumber: fields[1] as String,
      subTotal: fields[2] as double,
      shippingCost: fields[3] as double,
      totalAmount: fields[4] as double,
      status: fields[5] as String,
      statusId: fields[6] as int,
      paymentMethod: fields[7] as String,
      paymentStatus: fields[8] as String,
      orderDate: fields[9] as String,
      deliveredAt: fields[10] as String?,
      shippingFirstName: fields[11] as String,
      shippingLastName: fields[12] as String,
      shippingPhone: fields[13] as String,
      shippingAddress: fields[14] as String,
      shippingLatitude: fields[15] as double,
      shippingLongitude: fields[16] as double,
      notes: fields[17] as String?,
      vendorId: fields[18] as int,
      vendorName: fields[19] as String,
      items: (fields[20] as List).cast<OrderItemModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, OrderDetailsModel obj) {
    writer
      ..writeByte(21)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.orderNumber)
      ..writeByte(2)
      ..write(obj.subTotal)
      ..writeByte(3)
      ..write(obj.shippingCost)
      ..writeByte(4)
      ..write(obj.totalAmount)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.statusId)
      ..writeByte(7)
      ..write(obj.paymentMethod)
      ..writeByte(8)
      ..write(obj.paymentStatus)
      ..writeByte(9)
      ..write(obj.orderDate)
      ..writeByte(10)
      ..write(obj.deliveredAt)
      ..writeByte(11)
      ..write(obj.shippingFirstName)
      ..writeByte(12)
      ..write(obj.shippingLastName)
      ..writeByte(13)
      ..write(obj.shippingPhone)
      ..writeByte(14)
      ..write(obj.shippingAddress)
      ..writeByte(15)
      ..write(obj.shippingLatitude)
      ..writeByte(16)
      ..write(obj.shippingLongitude)
      ..writeByte(17)
      ..write(obj.notes)
      ..writeByte(18)
      ..write(obj.vendorId)
      ..writeByte(19)
      ..write(obj.vendorName)
      ..writeByte(20)
      ..write(obj.items);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OrderItemModelAdapter extends TypeAdapter<OrderItemModel> {
  @override
  final int typeId = 43;

  @override
  OrderItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OrderItemModel(
      id: fields[0] as int,
      productId: fields[1] as int,
      productNameAr: fields[2] as String,
      productNameEn: fields[3] as String,
      productImage: fields[4] as String,
      quantity: fields[5] as int,
      unitPrice: fields[6] as double,
      totalPrice: fields[7] as double,
      variantId: fields[8] as int?,
      variantTypeName: fields[9] as String?,
      variantValue: fields[10] as String?,
      variantColorHex: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, OrderItemModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.productNameAr)
      ..writeByte(3)
      ..write(obj.productNameEn)
      ..writeByte(4)
      ..write(obj.productImage)
      ..writeByte(5)
      ..write(obj.quantity)
      ..writeByte(6)
      ..write(obj.unitPrice)
      ..writeByte(7)
      ..write(obj.totalPrice)
      ..writeByte(8)
      ..write(obj.variantId)
      ..writeByte(9)
      ..write(obj.variantTypeName)
      ..writeByte(10)
      ..write(obj.variantValue)
      ..writeByte(11)
      ..write(obj.variantColorHex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDetailsModelImpl _$$OrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderDetailsModelImpl(
      id: (json['id'] as num).toInt(),
      orderNumber: json['orderNumber'] as String,
      subTotal: (json['subTotal'] as num).toDouble(),
      shippingCost: (json['shippingCost'] as num).toDouble(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      status: json['status'] as String,
      statusId: (json['statusId'] as num).toInt(),
      paymentMethod: json['paymentMethod'] as String,
      paymentStatus: json['paymentStatus'] as String,
      orderDate: json['orderDate'] as String,
      deliveredAt: json['deliveredAt'] as String?,
      shippingFirstName: json['shippingFirstName'] as String,
      shippingLastName: json['shippingLastName'] as String,
      shippingPhone: json['shippingPhone'] as String,
      shippingAddress: json['shippingAddress'] as String,
      shippingLatitude: (json['shippingLatitude'] as num).toDouble(),
      shippingLongitude: (json['shippingLongitude'] as num).toDouble(),
      notes: json['notes'] as String?,
      vendorId: (json['vendorId'] as num).toInt(),
      vendorName: json['vendorName'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderDetailsModelImplToJson(
        _$OrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'subTotal': instance.subTotal,
      'shippingCost': instance.shippingCost,
      'totalAmount': instance.totalAmount,
      'status': instance.status,
      'statusId': instance.statusId,
      'paymentMethod': instance.paymentMethod,
      'paymentStatus': instance.paymentStatus,
      'orderDate': instance.orderDate,
      'deliveredAt': instance.deliveredAt,
      'shippingFirstName': instance.shippingFirstName,
      'shippingLastName': instance.shippingLastName,
      'shippingPhone': instance.shippingPhone,
      'shippingAddress': instance.shippingAddress,
      'shippingLatitude': instance.shippingLatitude,
      'shippingLongitude': instance.shippingLongitude,
      'notes': instance.notes,
      'vendorId': instance.vendorId,
      'vendorName': instance.vendorName,
      'items': instance.items,
    };

_$OrderItemModelImpl _$$OrderItemModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemModelImpl(
      id: (json['id'] as num).toInt(),
      productId: (json['productId'] as num).toInt(),
      productNameAr: json['productNameAr'] as String,
      productNameEn: json['productNameEn'] as String,
      productImage: json['productImage'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unitPrice'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      variantId: (json['variantId'] as num?)?.toInt(),
      variantTypeName: json['variantTypeName'] as String?,
      variantValue: json['variantValue'] as String?,
      variantColorHex: json['variantColorHex'] as String?,
    );

Map<String, dynamic> _$$OrderItemModelImplToJson(
        _$OrderItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productNameAr': instance.productNameAr,
      'productNameEn': instance.productNameEn,
      'productImage': instance.productImage,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'totalPrice': instance.totalPrice,
      'variantId': instance.variantId,
      'variantTypeName': instance.variantTypeName,
      'variantValue': instance.variantValue,
      'variantColorHex': instance.variantColorHex,
    };
