// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) {
  return _OrderModel.fromJson(json);
}

/// @nodoc
mixin _$OrderModel {
  int get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  double get subTotal => throw _privateConstructorUsedError;
  double get shippingCost => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get statusId => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;
  String get orderDate => throw _privateConstructorUsedError;
  String? get deliveredAt => throw _privateConstructorUsedError;
  String get shippingFirstName => throw _privateConstructorUsedError;
  String get shippingLastName => throw _privateConstructorUsedError;
  String get shippingPhone => throw _privateConstructorUsedError;
  String get shippingAddress => throw _privateConstructorUsedError;
  double get shippingLatitude => throw _privateConstructorUsedError;
  double get shippingLongitude => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int get vendorId => throw _privateConstructorUsedError;
  String get vendorName => throw _privateConstructorUsedError;
  List<OrderItemModel> get items =>
      throw _privateConstructorUsedError; // Not in JSON — attached by the data source from data['payment']
// when the order is an online payment order.
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get paymentUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {int id,
      String orderNumber,
      double subTotal,
      double shippingCost,
      double totalAmount,
      String status,
      int statusId,
      String paymentMethod,
      String paymentStatus,
      String orderDate,
      String? deliveredAt,
      String shippingFirstName,
      String shippingLastName,
      String shippingPhone,
      String shippingAddress,
      double shippingLatitude,
      double shippingLongitude,
      String? notes,
      int vendorId,
      String vendorName,
      List<OrderItemModel> items,
      @JsonKey(includeFromJson: false, includeToJson: false)
      String? paymentUrl});
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? subTotal = null,
    Object? shippingCost = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? statusId = null,
    Object? paymentMethod = null,
    Object? paymentStatus = null,
    Object? orderDate = null,
    Object? deliveredAt = freezed,
    Object? shippingFirstName = null,
    Object? shippingLastName = null,
    Object? shippingPhone = null,
    Object? shippingAddress = null,
    Object? shippingLatitude = null,
    Object? shippingLongitude = null,
    Object? notes = freezed,
    Object? vendorId = null,
    Object? vendorName = null,
    Object? items = null,
    Object? paymentUrl = freezed,
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
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shippingCost: null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as double,
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
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingFirstName: null == shippingFirstName
          ? _value.shippingFirstName
          : shippingFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      shippingLastName: null == shippingLastName
          ? _value.shippingLastName
          : shippingLastName // ignore: cast_nullable_to_non_nullable
              as String,
      shippingPhone: null == shippingPhone
          ? _value.shippingPhone
          : shippingPhone // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      shippingLatitude: null == shippingLatitude
          ? _value.shippingLatitude
          : shippingLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      shippingLongitude: null == shippingLongitude
          ? _value.shippingLongitude
          : shippingLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderModelImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelImplCopyWith(
          _$OrderModelImpl value, $Res Function(_$OrderModelImpl) then) =
      __$$OrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String orderNumber,
      double subTotal,
      double shippingCost,
      double totalAmount,
      String status,
      int statusId,
      String paymentMethod,
      String paymentStatus,
      String orderDate,
      String? deliveredAt,
      String shippingFirstName,
      String shippingLastName,
      String shippingPhone,
      String shippingAddress,
      double shippingLatitude,
      double shippingLongitude,
      String? notes,
      int vendorId,
      String vendorName,
      List<OrderItemModel> items,
      @JsonKey(includeFromJson: false, includeToJson: false)
      String? paymentUrl});
}

/// @nodoc
class __$$OrderModelImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelImpl>
    implements _$$OrderModelImplCopyWith<$Res> {
  __$$OrderModelImplCopyWithImpl(
      _$OrderModelImpl _value, $Res Function(_$OrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? subTotal = null,
    Object? shippingCost = null,
    Object? totalAmount = null,
    Object? status = null,
    Object? statusId = null,
    Object? paymentMethod = null,
    Object? paymentStatus = null,
    Object? orderDate = null,
    Object? deliveredAt = freezed,
    Object? shippingFirstName = null,
    Object? shippingLastName = null,
    Object? shippingPhone = null,
    Object? shippingAddress = null,
    Object? shippingLatitude = null,
    Object? shippingLongitude = null,
    Object? notes = freezed,
    Object? vendorId = null,
    Object? vendorName = null,
    Object? items = null,
    Object? paymentUrl = freezed,
  }) {
    return _then(_$OrderModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double,
      shippingCost: null == shippingCost
          ? _value.shippingCost
          : shippingCost // ignore: cast_nullable_to_non_nullable
              as double,
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
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveredAt: freezed == deliveredAt
          ? _value.deliveredAt
          : deliveredAt // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingFirstName: null == shippingFirstName
          ? _value.shippingFirstName
          : shippingFirstName // ignore: cast_nullable_to_non_nullable
              as String,
      shippingLastName: null == shippingLastName
          ? _value.shippingLastName
          : shippingLastName // ignore: cast_nullable_to_non_nullable
              as String,
      shippingPhone: null == shippingPhone
          ? _value.shippingPhone
          : shippingPhone // ignore: cast_nullable_to_non_nullable
              as String,
      shippingAddress: null == shippingAddress
          ? _value.shippingAddress
          : shippingAddress // ignore: cast_nullable_to_non_nullable
              as String,
      shippingLatitude: null == shippingLatitude
          ? _value.shippingLatitude
          : shippingLatitude // ignore: cast_nullable_to_non_nullable
              as double,
      shippingLongitude: null == shippingLongitude
          ? _value.shippingLongitude
          : shippingLongitude // ignore: cast_nullable_to_non_nullable
              as double,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorId: null == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int,
      vendorName: null == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderItemModel>,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderModelImpl implements _OrderModel {
  const _$OrderModelImpl(
      {required this.id,
      required this.orderNumber,
      required this.subTotal,
      required this.shippingCost,
      required this.totalAmount,
      required this.status,
      required this.statusId,
      required this.paymentMethod,
      required this.paymentStatus,
      required this.orderDate,
      this.deliveredAt,
      required this.shippingFirstName,
      required this.shippingLastName,
      required this.shippingPhone,
      required this.shippingAddress,
      required this.shippingLatitude,
      required this.shippingLongitude,
      this.notes,
      required this.vendorId,
      required this.vendorName,
      required final List<OrderItemModel> items,
      @JsonKey(includeFromJson: false, includeToJson: false) this.paymentUrl})
      : _items = items;

  factory _$OrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderModelImplFromJson(json);

  @override
  final int id;
  @override
  final String orderNumber;
  @override
  final double subTotal;
  @override
  final double shippingCost;
  @override
  final double totalAmount;
  @override
  final String status;
  @override
  final int statusId;
  @override
  final String paymentMethod;
  @override
  final String paymentStatus;
  @override
  final String orderDate;
  @override
  final String? deliveredAt;
  @override
  final String shippingFirstName;
  @override
  final String shippingLastName;
  @override
  final String shippingPhone;
  @override
  final String shippingAddress;
  @override
  final double shippingLatitude;
  @override
  final double shippingLongitude;
  @override
  final String? notes;
  @override
  final int vendorId;
  @override
  final String vendorName;
  final List<OrderItemModel> _items;
  @override
  List<OrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

// Not in JSON — attached by the data source from data['payment']
// when the order is an online payment order.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String? paymentUrl;

  @override
  String toString() {
    return 'OrderModel(id: $id, orderNumber: $orderNumber, subTotal: $subTotal, shippingCost: $shippingCost, totalAmount: $totalAmount, status: $status, statusId: $statusId, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, orderDate: $orderDate, deliveredAt: $deliveredAt, shippingFirstName: $shippingFirstName, shippingLastName: $shippingLastName, shippingPhone: $shippingPhone, shippingAddress: $shippingAddress, shippingLatitude: $shippingLatitude, shippingLongitude: $shippingLongitude, notes: $notes, vendorId: $vendorId, vendorName: $vendorName, items: $items, paymentUrl: $paymentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.shippingCost, shippingCost) ||
                other.shippingCost == shippingCost) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveredAt, deliveredAt) ||
                other.deliveredAt == deliveredAt) &&
            (identical(other.shippingFirstName, shippingFirstName) ||
                other.shippingFirstName == shippingFirstName) &&
            (identical(other.shippingLastName, shippingLastName) ||
                other.shippingLastName == shippingLastName) &&
            (identical(other.shippingPhone, shippingPhone) ||
                other.shippingPhone == shippingPhone) &&
            (identical(other.shippingAddress, shippingAddress) ||
                other.shippingAddress == shippingAddress) &&
            (identical(other.shippingLatitude, shippingLatitude) ||
                other.shippingLatitude == shippingLatitude) &&
            (identical(other.shippingLongitude, shippingLongitude) ||
                other.shippingLongitude == shippingLongitude) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        orderNumber,
        subTotal,
        shippingCost,
        totalAmount,
        status,
        statusId,
        paymentMethod,
        paymentStatus,
        orderDate,
        deliveredAt,
        shippingFirstName,
        shippingLastName,
        shippingPhone,
        shippingAddress,
        shippingLatitude,
        shippingLongitude,
        notes,
        vendorId,
        vendorName,
        const DeepCollectionEquality().hash(_items),
        paymentUrl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      __$$OrderModelImplCopyWithImpl<_$OrderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderModelImplToJson(
      this,
    );
  }
}

abstract class _OrderModel implements OrderModel {
  const factory _OrderModel(
      {required final int id,
      required final String orderNumber,
      required final double subTotal,
      required final double shippingCost,
      required final double totalAmount,
      required final String status,
      required final int statusId,
      required final String paymentMethod,
      required final String paymentStatus,
      required final String orderDate,
      final String? deliveredAt,
      required final String shippingFirstName,
      required final String shippingLastName,
      required final String shippingPhone,
      required final String shippingAddress,
      required final double shippingLatitude,
      required final double shippingLongitude,
      final String? notes,
      required final int vendorId,
      required final String vendorName,
      required final List<OrderItemModel> items,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final String? paymentUrl}) = _$OrderModelImpl;

  factory _OrderModel.fromJson(Map<String, dynamic> json) =
      _$OrderModelImpl.fromJson;

  @override
  int get id;
  @override
  String get orderNumber;
  @override
  double get subTotal;
  @override
  double get shippingCost;
  @override
  double get totalAmount;
  @override
  String get status;
  @override
  int get statusId;
  @override
  String get paymentMethod;
  @override
  String get paymentStatus;
  @override
  String get orderDate;
  @override
  String? get deliveredAt;
  @override
  String get shippingFirstName;
  @override
  String get shippingLastName;
  @override
  String get shippingPhone;
  @override
  String get shippingAddress;
  @override
  double get shippingLatitude;
  @override
  double get shippingLongitude;
  @override
  String? get notes;
  @override
  int get vendorId;
  @override
  String get vendorName;
  @override
  List<OrderItemModel> get items;
  @override // Not in JSON — attached by the data source from data['payment']
// when the order is an online payment order.
  @JsonKey(includeFromJson: false, includeToJson: false)
  String? get paymentUrl;
  @override
  @JsonKey(ignore: true)
  _$$OrderModelImplCopyWith<_$OrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
