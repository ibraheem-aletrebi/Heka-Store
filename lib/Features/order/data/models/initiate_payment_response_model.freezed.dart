// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_payment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitiatePaymentResponseModel _$InitiatePaymentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _InitiatePaymentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$InitiatePaymentResponseModel {
  bool get success => throw _privateConstructorUsedError;
  InitiatePaymentData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiatePaymentResponseModelCopyWith<InitiatePaymentResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiatePaymentResponseModelCopyWith<$Res> {
  factory $InitiatePaymentResponseModelCopyWith(
          InitiatePaymentResponseModel value,
          $Res Function(InitiatePaymentResponseModel) then) =
      _$InitiatePaymentResponseModelCopyWithImpl<$Res,
          InitiatePaymentResponseModel>;
  @useResult
  $Res call({bool success, InitiatePaymentData data, String message});

  $InitiatePaymentDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InitiatePaymentResponseModelCopyWithImpl<$Res,
        $Val extends InitiatePaymentResponseModel>
    implements $InitiatePaymentResponseModelCopyWith<$Res> {
  _$InitiatePaymentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitiatePaymentData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InitiatePaymentDataCopyWith<$Res> get data {
    return $InitiatePaymentDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitiatePaymentResponseModelImplCopyWith<$Res>
    implements $InitiatePaymentResponseModelCopyWith<$Res> {
  factory _$$InitiatePaymentResponseModelImplCopyWith(
          _$InitiatePaymentResponseModelImpl value,
          $Res Function(_$InitiatePaymentResponseModelImpl) then) =
      __$$InitiatePaymentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, InitiatePaymentData data, String message});

  @override
  $InitiatePaymentDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$InitiatePaymentResponseModelImplCopyWithImpl<$Res>
    extends _$InitiatePaymentResponseModelCopyWithImpl<$Res,
        _$InitiatePaymentResponseModelImpl>
    implements _$$InitiatePaymentResponseModelImplCopyWith<$Res> {
  __$$InitiatePaymentResponseModelImplCopyWithImpl(
      _$InitiatePaymentResponseModelImpl _value,
      $Res Function(_$InitiatePaymentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$InitiatePaymentResponseModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InitiatePaymentData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiatePaymentResponseModelImpl
    implements _InitiatePaymentResponseModel {
  const _$InitiatePaymentResponseModelImpl(
      {required this.success, required this.data, required this.message});

  factory _$InitiatePaymentResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InitiatePaymentResponseModelImplFromJson(json);

  @override
  final bool success;
  @override
  final InitiatePaymentData data;
  @override
  final String message;

  @override
  String toString() {
    return 'InitiatePaymentResponseModel(success: $success, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiatePaymentResponseModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiatePaymentResponseModelImplCopyWith<
          _$InitiatePaymentResponseModelImpl>
      get copyWith => __$$InitiatePaymentResponseModelImplCopyWithImpl<
          _$InitiatePaymentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiatePaymentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _InitiatePaymentResponseModel
    implements InitiatePaymentResponseModel {
  const factory _InitiatePaymentResponseModel(
      {required final bool success,
      required final InitiatePaymentData data,
      required final String message}) = _$InitiatePaymentResponseModelImpl;

  factory _InitiatePaymentResponseModel.fromJson(Map<String, dynamic> json) =
      _$InitiatePaymentResponseModelImpl.fromJson;

  @override
  bool get success;
  @override
  InitiatePaymentData get data;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InitiatePaymentResponseModelImplCopyWith<
          _$InitiatePaymentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InitiatePaymentData _$InitiatePaymentDataFromJson(Map<String, dynamic> json) {
  return _InitiatePaymentData.fromJson(json);
}

/// @nodoc
mixin _$InitiatePaymentData {
  PaymentData get payment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitiatePaymentDataCopyWith<InitiatePaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiatePaymentDataCopyWith<$Res> {
  factory $InitiatePaymentDataCopyWith(
          InitiatePaymentData value, $Res Function(InitiatePaymentData) then) =
      _$InitiatePaymentDataCopyWithImpl<$Res, InitiatePaymentData>;
  @useResult
  $Res call({PaymentData payment});

  $PaymentDataCopyWith<$Res> get payment;
}

/// @nodoc
class _$InitiatePaymentDataCopyWithImpl<$Res, $Val extends InitiatePaymentData>
    implements $InitiatePaymentDataCopyWith<$Res> {
  _$InitiatePaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_value.copyWith(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentDataCopyWith<$Res> get payment {
    return $PaymentDataCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitiatePaymentDataImplCopyWith<$Res>
    implements $InitiatePaymentDataCopyWith<$Res> {
  factory _$$InitiatePaymentDataImplCopyWith(_$InitiatePaymentDataImpl value,
          $Res Function(_$InitiatePaymentDataImpl) then) =
      __$$InitiatePaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentData payment});

  @override
  $PaymentDataCopyWith<$Res> get payment;
}

/// @nodoc
class __$$InitiatePaymentDataImplCopyWithImpl<$Res>
    extends _$InitiatePaymentDataCopyWithImpl<$Res, _$InitiatePaymentDataImpl>
    implements _$$InitiatePaymentDataImplCopyWith<$Res> {
  __$$InitiatePaymentDataImplCopyWithImpl(_$InitiatePaymentDataImpl _value,
      $Res Function(_$InitiatePaymentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
  }) {
    return _then(_$InitiatePaymentDataImpl(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as PaymentData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiatePaymentDataImpl implements _InitiatePaymentData {
  const _$InitiatePaymentDataImpl({required this.payment});

  factory _$InitiatePaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitiatePaymentDataImplFromJson(json);

  @override
  final PaymentData payment;

  @override
  String toString() {
    return 'InitiatePaymentData(payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiatePaymentDataImpl &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiatePaymentDataImplCopyWith<_$InitiatePaymentDataImpl> get copyWith =>
      __$$InitiatePaymentDataImplCopyWithImpl<_$InitiatePaymentDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiatePaymentDataImplToJson(
      this,
    );
  }
}

abstract class _InitiatePaymentData implements InitiatePaymentData {
  const factory _InitiatePaymentData({required final PaymentData payment}) =
      _$InitiatePaymentDataImpl;

  factory _InitiatePaymentData.fromJson(Map<String, dynamic> json) =
      _$InitiatePaymentDataImpl.fromJson;

  @override
  PaymentData get payment;
  @override
  @JsonKey(ignore: true)
  _$$InitiatePaymentDataImplCopyWith<_$InitiatePaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) {
  return _PaymentData.fromJson(json);
}

/// @nodoc
mixin _$PaymentData {
  String get paymentCode => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get paymentUrl => throw _privateConstructorUsedError;
  String? get paymobTransactionId => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get paidAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDataCopyWith<PaymentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDataCopyWith<$Res> {
  factory $PaymentDataCopyWith(
          PaymentData value, $Res Function(PaymentData) then) =
      _$PaymentDataCopyWithImpl<$Res, PaymentData>;
  @useResult
  $Res call(
      {String paymentCode,
      String orderNumber,
      String method,
      String status,
      double amount,
      String paymentUrl,
      String? paymobTransactionId,
      String createdAt,
      String? paidAt,
      String? updatedAt});
}

/// @nodoc
class _$PaymentDataCopyWithImpl<$Res, $Val extends PaymentData>
    implements $PaymentDataCopyWith<$Res> {
  _$PaymentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = null,
    Object? orderNumber = null,
    Object? method = null,
    Object? status = null,
    Object? amount = null,
    Object? paymentUrl = null,
    Object? paymobTransactionId = freezed,
    Object? createdAt = null,
    Object? paidAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymobTransactionId: freezed == paymobTransactionId
          ? _value.paymobTransactionId
          : paymobTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentDataImplCopyWith<$Res>
    implements $PaymentDataCopyWith<$Res> {
  factory _$$PaymentDataImplCopyWith(
          _$PaymentDataImpl value, $Res Function(_$PaymentDataImpl) then) =
      __$$PaymentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String paymentCode,
      String orderNumber,
      String method,
      String status,
      double amount,
      String paymentUrl,
      String? paymobTransactionId,
      String createdAt,
      String? paidAt,
      String? updatedAt});
}

/// @nodoc
class __$$PaymentDataImplCopyWithImpl<$Res>
    extends _$PaymentDataCopyWithImpl<$Res, _$PaymentDataImpl>
    implements _$$PaymentDataImplCopyWith<$Res> {
  __$$PaymentDataImplCopyWithImpl(
      _$PaymentDataImpl _value, $Res Function(_$PaymentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentCode = null,
    Object? orderNumber = null,
    Object? method = null,
    Object? status = null,
    Object? amount = null,
    Object? paymentUrl = null,
    Object? paymobTransactionId = freezed,
    Object? createdAt = null,
    Object? paidAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PaymentDataImpl(
      paymentCode: null == paymentCode
          ? _value.paymentCode
          : paymentCode // ignore: cast_nullable_to_non_nullable
              as String,
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentUrl: null == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      paymobTransactionId: freezed == paymobTransactionId
          ? _value.paymobTransactionId
          : paymobTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      paidAt: freezed == paidAt
          ? _value.paidAt
          : paidAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentDataImpl implements _PaymentData {
  const _$PaymentDataImpl(
      {required this.paymentCode,
      required this.orderNumber,
      required this.method,
      required this.status,
      required this.amount,
      required this.paymentUrl,
      this.paymobTransactionId,
      required this.createdAt,
      this.paidAt,
      this.updatedAt});

  factory _$PaymentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentDataImplFromJson(json);

  @override
  final String paymentCode;
  @override
  final String orderNumber;
  @override
  final String method;
  @override
  final String status;
  @override
  final double amount;
  @override
  final String paymentUrl;
  @override
  final String? paymobTransactionId;
  @override
  final String createdAt;
  @override
  final String? paidAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'PaymentData(paymentCode: $paymentCode, orderNumber: $orderNumber, method: $method, status: $status, amount: $amount, paymentUrl: $paymentUrl, paymobTransactionId: $paymobTransactionId, createdAt: $createdAt, paidAt: $paidAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentDataImpl &&
            (identical(other.paymentCode, paymentCode) ||
                other.paymentCode == paymentCode) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.paymobTransactionId, paymobTransactionId) ||
                other.paymobTransactionId == paymobTransactionId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      paymentCode,
      orderNumber,
      method,
      status,
      amount,
      paymentUrl,
      paymobTransactionId,
      createdAt,
      paidAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      __$$PaymentDataImplCopyWithImpl<_$PaymentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentDataImplToJson(
      this,
    );
  }
}

abstract class _PaymentData implements PaymentData {
  const factory _PaymentData(
      {required final String paymentCode,
      required final String orderNumber,
      required final String method,
      required final String status,
      required final double amount,
      required final String paymentUrl,
      final String? paymobTransactionId,
      required final String createdAt,
      final String? paidAt,
      final String? updatedAt}) = _$PaymentDataImpl;

  factory _PaymentData.fromJson(Map<String, dynamic> json) =
      _$PaymentDataImpl.fromJson;

  @override
  String get paymentCode;
  @override
  String get orderNumber;
  @override
  String get method;
  @override
  String get status;
  @override
  double get amount;
  @override
  String get paymentUrl;
  @override
  String? get paymobTransactionId;
  @override
  String get createdAt;
  @override
  String? get paidAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PaymentDataImplCopyWith<_$PaymentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
