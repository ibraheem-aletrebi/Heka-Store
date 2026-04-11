// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get orderNumber => throw _privateConstructorUsedError;
  @HiveField(2)
  double get subTotal => throw _privateConstructorUsedError;
  @HiveField(3)
  double get shippingCost => throw _privateConstructorUsedError;
  @HiveField(4)
  double get totalAmount => throw _privateConstructorUsedError;
  @HiveField(5)
  String get status => throw _privateConstructorUsedError;
  @HiveField(6)
  int get statusId => throw _privateConstructorUsedError;
  @HiveField(7)
  String get paymentMethod => throw _privateConstructorUsedError;
  @HiveField(8)
  String get paymentStatus => throw _privateConstructorUsedError;
  @HiveField(9)
  String get orderDate => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get deliveredAt => throw _privateConstructorUsedError;
  @HiveField(11)
  String get shippingFirstName => throw _privateConstructorUsedError;
  @HiveField(12)
  String get shippingLastName => throw _privateConstructorUsedError;
  @HiveField(13)
  String get shippingPhone => throw _privateConstructorUsedError;
  @HiveField(14)
  String get shippingAddress => throw _privateConstructorUsedError;
  @HiveField(15)
  double get shippingLatitude => throw _privateConstructorUsedError;
  @HiveField(16)
  double get shippingLongitude => throw _privateConstructorUsedError;
  @HiveField(17)
  String? get notes => throw _privateConstructorUsedError;
  @HiveField(18)
  int get vendorId => throw _privateConstructorUsedError;
  @HiveField(19)
  String get vendorName => throw _privateConstructorUsedError;
  @HiveField(20)
  List<OrderItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String orderNumber,
      @HiveField(2) double subTotal,
      @HiveField(3) double shippingCost,
      @HiveField(4) double totalAmount,
      @HiveField(5) String status,
      @HiveField(6) int statusId,
      @HiveField(7) String paymentMethod,
      @HiveField(8) String paymentStatus,
      @HiveField(9) String orderDate,
      @HiveField(10) String? deliveredAt,
      @HiveField(11) String shippingFirstName,
      @HiveField(12) String shippingLastName,
      @HiveField(13) String shippingPhone,
      @HiveField(14) String shippingAddress,
      @HiveField(15) double shippingLatitude,
      @HiveField(16) double shippingLongitude,
      @HiveField(17) String? notes,
      @HiveField(18) int vendorId,
      @HiveField(19) String vendorName,
      @HiveField(20) List<OrderItemModel> items});
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDetailsModelImplCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$OrderDetailsModelImplCopyWith(_$OrderDetailsModelImpl value,
          $Res Function(_$OrderDetailsModelImpl) then) =
      __$$OrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String orderNumber,
      @HiveField(2) double subTotal,
      @HiveField(3) double shippingCost,
      @HiveField(4) double totalAmount,
      @HiveField(5) String status,
      @HiveField(6) int statusId,
      @HiveField(7) String paymentMethod,
      @HiveField(8) String paymentStatus,
      @HiveField(9) String orderDate,
      @HiveField(10) String? deliveredAt,
      @HiveField(11) String shippingFirstName,
      @HiveField(12) String shippingLastName,
      @HiveField(13) String shippingPhone,
      @HiveField(14) String shippingAddress,
      @HiveField(15) double shippingLatitude,
      @HiveField(16) double shippingLongitude,
      @HiveField(17) String? notes,
      @HiveField(18) int vendorId,
      @HiveField(19) String vendorName,
      @HiveField(20) List<OrderItemModel> items});
}

/// @nodoc
class __$$OrderDetailsModelImplCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$OrderDetailsModelImpl>
    implements _$$OrderDetailsModelImplCopyWith<$Res> {
  __$$OrderDetailsModelImplCopyWithImpl(_$OrderDetailsModelImpl _value,
      $Res Function(_$OrderDetailsModelImpl) _then)
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
  }) {
    return _then(_$OrderDetailsModelImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDetailsModelImpl implements _OrderDetailsModel {
  const _$OrderDetailsModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.orderNumber,
      @HiveField(2) required this.subTotal,
      @HiveField(3) required this.shippingCost,
      @HiveField(4) required this.totalAmount,
      @HiveField(5) required this.status,
      @HiveField(6) required this.statusId,
      @HiveField(7) required this.paymentMethod,
      @HiveField(8) required this.paymentStatus,
      @HiveField(9) required this.orderDate,
      @HiveField(10) this.deliveredAt,
      @HiveField(11) required this.shippingFirstName,
      @HiveField(12) required this.shippingLastName,
      @HiveField(13) required this.shippingPhone,
      @HiveField(14) required this.shippingAddress,
      @HiveField(15) required this.shippingLatitude,
      @HiveField(16) required this.shippingLongitude,
      @HiveField(17) this.notes,
      @HiveField(18) required this.vendorId,
      @HiveField(19) required this.vendorName,
      @HiveField(20) required final List<OrderItemModel> items})
      : _items = items;

  factory _$OrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDetailsModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String orderNumber;
  @override
  @HiveField(2)
  final double subTotal;
  @override
  @HiveField(3)
  final double shippingCost;
  @override
  @HiveField(4)
  final double totalAmount;
  @override
  @HiveField(5)
  final String status;
  @override
  @HiveField(6)
  final int statusId;
  @override
  @HiveField(7)
  final String paymentMethod;
  @override
  @HiveField(8)
  final String paymentStatus;
  @override
  @HiveField(9)
  final String orderDate;
  @override
  @HiveField(10)
  final String? deliveredAt;
  @override
  @HiveField(11)
  final String shippingFirstName;
  @override
  @HiveField(12)
  final String shippingLastName;
  @override
  @HiveField(13)
  final String shippingPhone;
  @override
  @HiveField(14)
  final String shippingAddress;
  @override
  @HiveField(15)
  final double shippingLatitude;
  @override
  @HiveField(16)
  final double shippingLongitude;
  @override
  @HiveField(17)
  final String? notes;
  @override
  @HiveField(18)
  final int vendorId;
  @override
  @HiveField(19)
  final String vendorName;
  final List<OrderItemModel> _items;
  @override
  @HiveField(20)
  List<OrderItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, orderNumber: $orderNumber, subTotal: $subTotal, shippingCost: $shippingCost, totalAmount: $totalAmount, status: $status, statusId: $statusId, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, orderDate: $orderDate, deliveredAt: $deliveredAt, shippingFirstName: $shippingFirstName, shippingLastName: $shippingLastName, shippingPhone: $shippingPhone, shippingAddress: $shippingAddress, shippingLatitude: $shippingLatitude, shippingLongitude: $shippingLongitude, notes: $notes, vendorId: $vendorId, vendorName: $vendorName, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDetailsModelImpl &&
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
            const DeepCollectionEquality().equals(other._items, _items));
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
        const DeepCollectionEquality().hash(_items)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      __$$OrderDetailsModelImplCopyWithImpl<_$OrderDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  const factory _OrderDetailsModel(
          {@HiveField(0) required final int id,
          @HiveField(1) required final String orderNumber,
          @HiveField(2) required final double subTotal,
          @HiveField(3) required final double shippingCost,
          @HiveField(4) required final double totalAmount,
          @HiveField(5) required final String status,
          @HiveField(6) required final int statusId,
          @HiveField(7) required final String paymentMethod,
          @HiveField(8) required final String paymentStatus,
          @HiveField(9) required final String orderDate,
          @HiveField(10) final String? deliveredAt,
          @HiveField(11) required final String shippingFirstName,
          @HiveField(12) required final String shippingLastName,
          @HiveField(13) required final String shippingPhone,
          @HiveField(14) required final String shippingAddress,
          @HiveField(15) required final double shippingLatitude,
          @HiveField(16) required final double shippingLongitude,
          @HiveField(17) final String? notes,
          @HiveField(18) required final int vendorId,
          @HiveField(19) required final String vendorName,
          @HiveField(20) required final List<OrderItemModel> items}) =
      _$OrderDetailsModelImpl;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$OrderDetailsModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get orderNumber;
  @override
  @HiveField(2)
  double get subTotal;
  @override
  @HiveField(3)
  double get shippingCost;
  @override
  @HiveField(4)
  double get totalAmount;
  @override
  @HiveField(5)
  String get status;
  @override
  @HiveField(6)
  int get statusId;
  @override
  @HiveField(7)
  String get paymentMethod;
  @override
  @HiveField(8)
  String get paymentStatus;
  @override
  @HiveField(9)
  String get orderDate;
  @override
  @HiveField(10)
  String? get deliveredAt;
  @override
  @HiveField(11)
  String get shippingFirstName;
  @override
  @HiveField(12)
  String get shippingLastName;
  @override
  @HiveField(13)
  String get shippingPhone;
  @override
  @HiveField(14)
  String get shippingAddress;
  @override
  @HiveField(15)
  double get shippingLatitude;
  @override
  @HiveField(16)
  double get shippingLongitude;
  @override
  @HiveField(17)
  String? get notes;
  @override
  @HiveField(18)
  int get vendorId;
  @override
  @HiveField(19)
  String get vendorName;
  @override
  @HiveField(20)
  List<OrderItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$OrderDetailsModelImplCopyWith<_$OrderDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) {
  return _OrderItemModel.fromJson(json);
}

/// @nodoc
mixin _$OrderItemModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  int get productId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get productNameAr => throw _privateConstructorUsedError;
  @HiveField(3)
  String get productNameEn => throw _privateConstructorUsedError;
  @HiveField(4)
  String get productImage => throw _privateConstructorUsedError;
  @HiveField(5)
  int get quantity => throw _privateConstructorUsedError;
  @HiveField(6)
  double get unitPrice => throw _privateConstructorUsedError;
  @HiveField(7)
  double get totalPrice => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get variantId => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get variantTypeName => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get variantValue => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get variantColorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemModelCopyWith<OrderItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemModelCopyWith<$Res> {
  factory $OrderItemModelCopyWith(
          OrderItemModel value, $Res Function(OrderItemModel) then) =
      _$OrderItemModelCopyWithImpl<$Res, OrderItemModel>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int productId,
      @HiveField(2) String productNameAr,
      @HiveField(3) String productNameEn,
      @HiveField(4) String productImage,
      @HiveField(5) int quantity,
      @HiveField(6) double unitPrice,
      @HiveField(7) double totalPrice,
      @HiveField(8) int? variantId,
      @HiveField(9) String? variantTypeName,
      @HiveField(10) String? variantValue,
      @HiveField(11) String? variantColorHex});
}

/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res, $Val extends OrderItemModel>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productNameAr = null,
    Object? productNameEn = null,
    Object? productImage = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? variantId = freezed,
    Object? variantTypeName = freezed,
    Object? variantValue = freezed,
    Object? variantColorHex = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productNameAr: null == productNameAr
          ? _value.productNameAr
          : productNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantTypeName: freezed == variantTypeName
          ? _value.variantTypeName
          : variantTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantValue: freezed == variantValue
          ? _value.variantValue
          : variantValue // ignore: cast_nullable_to_non_nullable
              as String?,
      variantColorHex: freezed == variantColorHex
          ? _value.variantColorHex
          : variantColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemModelImplCopyWith<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  factory _$$OrderItemModelImplCopyWith(_$OrderItemModelImpl value,
          $Res Function(_$OrderItemModelImpl) then) =
      __$$OrderItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) int productId,
      @HiveField(2) String productNameAr,
      @HiveField(3) String productNameEn,
      @HiveField(4) String productImage,
      @HiveField(5) int quantity,
      @HiveField(6) double unitPrice,
      @HiveField(7) double totalPrice,
      @HiveField(8) int? variantId,
      @HiveField(9) String? variantTypeName,
      @HiveField(10) String? variantValue,
      @HiveField(11) String? variantColorHex});
}

/// @nodoc
class __$$OrderItemModelImplCopyWithImpl<$Res>
    extends _$OrderItemModelCopyWithImpl<$Res, _$OrderItemModelImpl>
    implements _$$OrderItemModelImplCopyWith<$Res> {
  __$$OrderItemModelImplCopyWithImpl(
      _$OrderItemModelImpl _value, $Res Function(_$OrderItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? productNameAr = null,
    Object? productNameEn = null,
    Object? productImage = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? totalPrice = null,
    Object? variantId = freezed,
    Object? variantTypeName = freezed,
    Object? variantValue = freezed,
    Object? variantColorHex = freezed,
  }) {
    return _then(_$OrderItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productNameAr: null == productNameAr
          ? _value.productNameAr
          : productNameAr // ignore: cast_nullable_to_non_nullable
              as String,
      productNameEn: null == productNameEn
          ? _value.productNameEn
          : productNameEn // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
      variantTypeName: freezed == variantTypeName
          ? _value.variantTypeName
          : variantTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      variantValue: freezed == variantValue
          ? _value.variantValue
          : variantValue // ignore: cast_nullable_to_non_nullable
              as String?,
      variantColorHex: freezed == variantColorHex
          ? _value.variantColorHex
          : variantColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemModelImpl implements _OrderItemModel {
  const _$OrderItemModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.productId,
      @HiveField(2) required this.productNameAr,
      @HiveField(3) required this.productNameEn,
      @HiveField(4) required this.productImage,
      @HiveField(5) required this.quantity,
      @HiveField(6) required this.unitPrice,
      @HiveField(7) required this.totalPrice,
      @HiveField(8) this.variantId,
      @HiveField(9) this.variantTypeName,
      @HiveField(10) this.variantValue,
      @HiveField(11) this.variantColorHex});

  factory _$OrderItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final int productId;
  @override
  @HiveField(2)
  final String productNameAr;
  @override
  @HiveField(3)
  final String productNameEn;
  @override
  @HiveField(4)
  final String productImage;
  @override
  @HiveField(5)
  final int quantity;
  @override
  @HiveField(6)
  final double unitPrice;
  @override
  @HiveField(7)
  final double totalPrice;
  @override
  @HiveField(8)
  final int? variantId;
  @override
  @HiveField(9)
  final String? variantTypeName;
  @override
  @HiveField(10)
  final String? variantValue;
  @override
  @HiveField(11)
  final String? variantColorHex;

  @override
  String toString() {
    return 'OrderItemModel(id: $id, productId: $productId, productNameAr: $productNameAr, productNameEn: $productNameEn, productImage: $productImage, quantity: $quantity, unitPrice: $unitPrice, totalPrice: $totalPrice, variantId: $variantId, variantTypeName: $variantTypeName, variantValue: $variantValue, variantColorHex: $variantColorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productNameAr, productNameAr) ||
                other.productNameAr == productNameAr) &&
            (identical(other.productNameEn, productNameEn) ||
                other.productNameEn == productNameEn) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId) &&
            (identical(other.variantTypeName, variantTypeName) ||
                other.variantTypeName == variantTypeName) &&
            (identical(other.variantValue, variantValue) ||
                other.variantValue == variantValue) &&
            (identical(other.variantColorHex, variantColorHex) ||
                other.variantColorHex == variantColorHex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      productNameAr,
      productNameEn,
      productImage,
      quantity,
      unitPrice,
      totalPrice,
      variantId,
      variantTypeName,
      variantValue,
      variantColorHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      __$$OrderItemModelImplCopyWithImpl<_$OrderItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemModelImplToJson(
      this,
    );
  }
}

abstract class _OrderItemModel implements OrderItemModel {
  const factory _OrderItemModel(
      {@HiveField(0) required final int id,
      @HiveField(1) required final int productId,
      @HiveField(2) required final String productNameAr,
      @HiveField(3) required final String productNameEn,
      @HiveField(4) required final String productImage,
      @HiveField(5) required final int quantity,
      @HiveField(6) required final double unitPrice,
      @HiveField(7) required final double totalPrice,
      @HiveField(8) final int? variantId,
      @HiveField(9) final String? variantTypeName,
      @HiveField(10) final String? variantValue,
      @HiveField(11) final String? variantColorHex}) = _$OrderItemModelImpl;

  factory _OrderItemModel.fromJson(Map<String, dynamic> json) =
      _$OrderItemModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  int get productId;
  @override
  @HiveField(2)
  String get productNameAr;
  @override
  @HiveField(3)
  String get productNameEn;
  @override
  @HiveField(4)
  String get productImage;
  @override
  @HiveField(5)
  int get quantity;
  @override
  @HiveField(6)
  double get unitPrice;
  @override
  @HiveField(7)
  double get totalPrice;
  @override
  @HiveField(8)
  int? get variantId;
  @override
  @HiveField(9)
  String? get variantTypeName;
  @override
  @HiveField(10)
  String? get variantValue;
  @override
  @HiveField(11)
  String? get variantColorHex;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemModelImplCopyWith<_$OrderItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
