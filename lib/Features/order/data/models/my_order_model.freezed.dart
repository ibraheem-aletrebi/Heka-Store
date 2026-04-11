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

MyOrdersResponseModel _$MyOrdersResponseModelFromJson(
    Map<String, dynamic> json) {
  return _MyOrdersResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MyOrdersResponseModel {
  List<MyOrderModel> get items => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasPreviousPage => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyOrdersResponseModelCopyWith<MyOrdersResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrdersResponseModelCopyWith<$Res> {
  factory $MyOrdersResponseModelCopyWith(MyOrdersResponseModel value,
          $Res Function(MyOrdersResponseModel) then) =
      _$MyOrdersResponseModelCopyWithImpl<$Res, MyOrdersResponseModel>;
  @useResult
  $Res call(
      {List<MyOrderModel> items,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class _$MyOrdersResponseModelCopyWithImpl<$Res,
        $Val extends MyOrdersResponseModel>
    implements $MyOrdersResponseModelCopyWith<$Res> {
  _$MyOrdersResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? hasPreviousPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MyOrderModel>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyOrdersResponseModelImplCopyWith<$Res>
    implements $MyOrdersResponseModelCopyWith<$Res> {
  factory _$$MyOrdersResponseModelImplCopyWith(
          _$MyOrdersResponseModelImpl value,
          $Res Function(_$MyOrdersResponseModelImpl) then) =
      __$$MyOrdersResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MyOrderModel> items,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class __$$MyOrdersResponseModelImplCopyWithImpl<$Res>
    extends _$MyOrdersResponseModelCopyWithImpl<$Res,
        _$MyOrdersResponseModelImpl>
    implements _$$MyOrdersResponseModelImplCopyWith<$Res> {
  __$$MyOrdersResponseModelImplCopyWithImpl(_$MyOrdersResponseModelImpl _value,
      $Res Function(_$MyOrdersResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? hasPreviousPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$MyOrdersResponseModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MyOrderModel>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      hasPreviousPage: null == hasPreviousPage
          ? _value.hasPreviousPage
          : hasPreviousPage // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyOrdersResponseModelImpl implements _MyOrdersResponseModel {
  const _$MyOrdersResponseModelImpl(
      {required final List<MyOrderModel> items,
      required this.totalCount,
      required this.pageNumber,
      required this.pageSize,
      required this.totalPages,
      required this.hasPreviousPage,
      required this.hasNextPage})
      : _items = items;

  factory _$MyOrdersResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrdersResponseModelImplFromJson(json);

  final List<MyOrderModel> _items;
  @override
  List<MyOrderModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final int totalCount;
  @override
  final int pageNumber;
  @override
  final int pageSize;
  @override
  final int totalPages;
  @override
  final bool hasPreviousPage;
  @override
  final bool hasNextPage;

  @override
  String toString() {
    return 'MyOrdersResponseModel(items: $items, totalCount: $totalCount, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyOrdersResponseModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasPreviousPage, hasPreviousPage) ||
                other.hasPreviousPage == hasPreviousPage) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalCount,
      pageNumber,
      pageSize,
      totalPages,
      hasPreviousPage,
      hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyOrdersResponseModelImplCopyWith<_$MyOrdersResponseModelImpl>
      get copyWith => __$$MyOrdersResponseModelImplCopyWithImpl<
          _$MyOrdersResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyOrdersResponseModelImplToJson(
      this,
    );
  }
}

abstract class _MyOrdersResponseModel implements MyOrdersResponseModel {
  const factory _MyOrdersResponseModel(
      {required final List<MyOrderModel> items,
      required final int totalCount,
      required final int pageNumber,
      required final int pageSize,
      required final int totalPages,
      required final bool hasPreviousPage,
      required final bool hasNextPage}) = _$MyOrdersResponseModelImpl;

  factory _MyOrdersResponseModel.fromJson(Map<String, dynamic> json) =
      _$MyOrdersResponseModelImpl.fromJson;

  @override
  List<MyOrderModel> get items;
  @override
  int get totalCount;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  bool get hasPreviousPage;
  @override
  bool get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$MyOrdersResponseModelImplCopyWith<_$MyOrdersResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MyOrderModel _$MyOrderModelFromJson(Map<String, dynamic> json) {
  return _MyOrderModel.fromJson(json);
}

/// @nodoc
mixin _$MyOrderModel {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get orderNumber => throw _privateConstructorUsedError;
  @HiveField(2)
  double get totalAmount => throw _privateConstructorUsedError;
  @HiveField(3)
  String get status => throw _privateConstructorUsedError;
  @HiveField(4)
  int get statusId => throw _privateConstructorUsedError;
  @HiveField(5)
  String get orderDate => throw _privateConstructorUsedError;
  @HiveField(6)
  int get itemsCount => throw _privateConstructorUsedError;
  @HiveField(7)
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
      {@HiveField(0) int id,
      @HiveField(1) String orderNumber,
      @HiveField(2) double totalAmount,
      @HiveField(3) String status,
      @HiveField(4) int statusId,
      @HiveField(5) String orderDate,
      @HiveField(6) int itemsCount,
      @HiveField(7) String vendorName});
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
      {@HiveField(0) int id,
      @HiveField(1) String orderNumber,
      @HiveField(2) double totalAmount,
      @HiveField(3) String status,
      @HiveField(4) int statusId,
      @HiveField(5) String orderDate,
      @HiveField(6) int itemsCount,
      @HiveField(7) String vendorName});
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
      {@HiveField(0) required this.id,
      @HiveField(1) required this.orderNumber,
      @HiveField(2) required this.totalAmount,
      @HiveField(3) required this.status,
      @HiveField(4) required this.statusId,
      @HiveField(5) required this.orderDate,
      @HiveField(6) required this.itemsCount,
      @HiveField(7) required this.vendorName});

  factory _$MyOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyOrderModelImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String orderNumber;
  @override
  @HiveField(2)
  final double totalAmount;
  @override
  @HiveField(3)
  final String status;
  @override
  @HiveField(4)
  final int statusId;
  @override
  @HiveField(5)
  final String orderDate;
  @override
  @HiveField(6)
  final int itemsCount;
  @override
  @HiveField(7)
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
      {@HiveField(0) required final int id,
      @HiveField(1) required final String orderNumber,
      @HiveField(2) required final double totalAmount,
      @HiveField(3) required final String status,
      @HiveField(4) required final int statusId,
      @HiveField(5) required final String orderDate,
      @HiveField(6) required final int itemsCount,
      @HiveField(7) required final String vendorName}) = _$MyOrderModelImpl;

  factory _MyOrderModel.fromJson(Map<String, dynamic> json) =
      _$MyOrderModelImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get orderNumber;
  @override
  @HiveField(2)
  double get totalAmount;
  @override
  @HiveField(3)
  String get status;
  @override
  @HiveField(4)
  int get statusId;
  @override
  @HiveField(5)
  String get orderDate;
  @override
  @HiveField(6)
  int get itemsCount;
  @override
  @HiveField(7)
  String get vendorName;
  @override
  @JsonKey(ignore: true)
  _$$MyOrderModelImplCopyWith<_$MyOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
