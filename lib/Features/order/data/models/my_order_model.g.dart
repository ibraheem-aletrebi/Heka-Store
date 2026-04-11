// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MyOrderModelAdapter extends TypeAdapter<MyOrderModel> {
  @override
  final int typeId = 47;

  @override
  MyOrderModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MyOrderModel(
      id: fields[0] as int,
      orderNumber: fields[1] as String,
      totalAmount: fields[2] as double,
      status: fields[3] as String,
      statusId: fields[4] as int,
      orderDate: fields[5] as String,
      itemsCount: fields[6] as int,
      vendorName: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MyOrderModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.orderNumber)
      ..writeByte(2)
      ..write(obj.totalAmount)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.statusId)
      ..writeByte(5)
      ..write(obj.orderDate)
      ..writeByte(6)
      ..write(obj.itemsCount)
      ..writeByte(7)
      ..write(obj.vendorName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyOrderModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyOrdersResponseModelImpl _$$MyOrdersResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrdersResponseModelImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => MyOrderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: (json['totalCount'] as num).toInt(),
      pageNumber: (json['pageNumber'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool,
      hasNextPage: json['hasNextPage'] as bool,
    );

Map<String, dynamic> _$$MyOrdersResponseModelImplToJson(
        _$MyOrdersResponseModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'totalCount': instance.totalCount,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalPages': instance.totalPages,
      'hasPreviousPage': instance.hasPreviousPage,
      'hasNextPage': instance.hasNextPage,
    };

_$MyOrderModelImpl _$$MyOrderModelImplFromJson(Map<String, dynamic> json) =>
    _$MyOrderModelImpl(
      id: (json['id'] as num).toInt(),
      orderNumber: json['orderNumber'] as String,
      totalAmount: (json['totalAmount'] as num).toDouble(),
      status: json['status'] as String,
      statusId: (json['statusId'] as num).toInt(),
      orderDate: json['orderDate'] as String,
      itemsCount: (json['itemsCount'] as num).toInt(),
      vendorName: json['vendorName'] as String,
    );

Map<String, dynamic> _$$MyOrderModelImplToJson(_$MyOrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orderNumber': instance.orderNumber,
      'totalAmount': instance.totalAmount,
      'status': instance.status,
      'statusId': instance.statusId,
      'orderDate': instance.orderDate,
      'itemsCount': instance.itemsCount,
      'vendorName': instance.vendorName,
    };
