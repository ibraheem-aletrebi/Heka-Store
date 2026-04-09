// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyOrderModel _$MyOrderModelFromJson(Map<String, dynamic> json) {
  return _MyOrderModel.fromJson(json);
}

/// @nodoc
mixin _$MyOrderModel {
  int get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get statusId => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  int get itemsCount => throw _privateConstructorUsedError;
  String get vendorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyOrderModelCopyWith<MyOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderModelCopyWith<$Res> {
  factory $MyOrderModelCopyWith(
          MyOrderModel value, $Res Function(MyOrderModel) then) =
      _$MyOrderModelCopyWithImpl<$Res, MyOrderModel>;
  @useResult
  $Res call(
      {int id,
      String orderNumber,
      double totalAmount,
      String status,
      int statusId,
      String orderDate,
      int itemsCount,
      String vendorName});
}

/// @nodoc
class _$MyOrderModelCopyWithImpl<$Res, $Val extends MyOrderModel>
    implements $MyOrderModelCopyWith<$Res> {
  _$MyOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? statusId = null,
    Object? orderDate = null,
    Object? itemsCount = null,
    Object? vendorName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrderModelImplCopyWith<$Res>
    implements $MyOrderModelCopyWith<$Res> {
  factory _$$MyOrderModelImplCopyWith(
          _$MyOrderModelImpl value, $Res Function(_$MyOrderModelImpl) then) =
      __$$MyOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String orderNumber,
      double totalAmount,
      String status,
      int statusId,
      String orderDate,
      int itemsCount,
      String vendorName});
}

/// @nodoc
class __$$MyOrderModelImplCopyWithImpl<$Res>
    extends _$MyOrderModelCopyWithImpl<$Res, _$MyOrderModelImpl>
    implements _$$MyOrderModelImplCopyWith<$Res> {
  __$$MyOrderModelImplCopyWithImpl(
      _$MyOrderModelImpl _value, $Res Function(_$MyOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? statusId = null,
    Object? orderDate = null,
    Object? itemsCount = null,
    Object? vendorName = null,
  }) {
    return _then(_$MyOrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      itemsCount: null == itemsCount
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrderModelImpl implements _MyOrderModel {
  const _$MyOrderModelImpl(
      {required this.id,
      required this.orderNumber,
      required this.totalAmount,
      required this.status,
      required this.statusId,
      required this.orderDate,
      required this.itemsCount,
      required this.vendorName});

  factory _$MyOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrderModelImplFromJson(json);

  @override
  final int id;
  @override
  final String orderNumber;
  @override
  final double totalAmount;
  @override
  final String status;
  @override
  final int statusId;
  @override
  final String orderDate;
  @override
  final int itemsCount;
  @override
  final String vendorName;

  @override
  String toString() {
    return 'MyOrderModel(id: $id, orderNumber: $orderNumber, totalAmount: $totalAmount, status: $status, statusId: $statusId, orderDate: $orderDate, itemsCount: $itemsCount, vendorName: $vendorName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderNumber, totalAmount,
      status, statusId, orderDate, itemsCount, vendorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrderModelImplCopyWith<_$MyOrderModelImpl> get copyWith =>
      __$$MyOrderModelImplCopyWithImpl<_$MyOrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrderModelImplToJson(
      this,
    );
  }
}

abstract class _MyOrderModel implements MyOrderModel {
  const factory _MyOrderModel(
      {required final int id,
      required final String orderNumber,
      required final double totalAmount,
      required final String status,
      required final int statusId,
      required final String orderDate,
      required final int itemsCount,
      required final String vendorName}) = _$MyOrderModelImpl;

  factory _MyOrderModel.fromJson(Map<String, dynamic> json) =
      _$MyOrderModelImpl.fromJson;

  @override
  int get id;
  @override
  String get orderNumber;
  @override
  double get totalAmount;
  @override
  String get status;
  @override
  int get statusId;
  @override
  String get orderDate;
  @override
  int get itemsCount;
  @override
  String get vendorName;
  @override
  @JsonKey(ignore: true)
  _$$MyOrderModelImplCopyWith<_$MyOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
