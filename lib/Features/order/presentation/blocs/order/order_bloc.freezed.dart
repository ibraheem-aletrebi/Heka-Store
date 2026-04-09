// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderRequestModel request) placed,
    required TResult Function(String orderNumber) paymentSuccess,
    required TResult Function() paymentCancelled,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderRequestModel request)? placed,
    TResult? Function(String orderNumber)? paymentSuccess,
    TResult? Function()? paymentCancelled,
    TResult? Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderRequestModel request)? placed,
    TResult Function(String orderNumber)? paymentSuccess,
    TResult Function()? paymentCancelled,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPlaced value) placed,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderPlaced value)? placed,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentCancelled value)? paymentCancelled,
    TResult? Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPlaced value)? placed,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderPlacedImplCopyWith<$Res> {
  factory _$$OrderPlacedImplCopyWith(
          _$OrderPlacedImpl value, $Res Function(_$OrderPlacedImpl) then) =
      __$$OrderPlacedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateOrderRequestModel request});

  $CreateOrderRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$OrderPlacedImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$OrderPlacedImpl>
    implements _$$OrderPlacedImplCopyWith<$Res> {
  __$$OrderPlacedImplCopyWithImpl(
      _$OrderPlacedImpl _value, $Res Function(_$OrderPlacedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$OrderPlacedImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateOrderRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateOrderRequestModelCopyWith<$Res> get request {
    return $CreateOrderRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$OrderPlacedImpl implements _OrderPlaced {
  const _$OrderPlacedImpl({required this.request});

  @override
  final CreateOrderRequestModel request;

  @override
  String toString() {
    return 'OrderEvent.placed(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlacedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPlacedImplCopyWith<_$OrderPlacedImpl> get copyWith =>
      __$$OrderPlacedImplCopyWithImpl<_$OrderPlacedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderRequestModel request) placed,
    required TResult Function(String orderNumber) paymentSuccess,
    required TResult Function() paymentCancelled,
    required TResult Function() reset,
  }) {
    return placed(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderRequestModel request)? placed,
    TResult? Function(String orderNumber)? paymentSuccess,
    TResult? Function()? paymentCancelled,
    TResult? Function()? reset,
  }) {
    return placed?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderRequestModel request)? placed,
    TResult Function(String orderNumber)? paymentSuccess,
    TResult Function()? paymentCancelled,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (placed != null) {
      return placed(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPlaced value) placed,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_Reset value) reset,
  }) {
    return placed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderPlaced value)? placed,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentCancelled value)? paymentCancelled,
    TResult? Function(_Reset value)? reset,
  }) {
    return placed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPlaced value)? placed,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (placed != null) {
      return placed(this);
    }
    return orElse();
  }
}

abstract class _OrderPlaced implements OrderEvent {
  const factory _OrderPlaced({required final CreateOrderRequestModel request}) =
      _$OrderPlacedImpl;

  CreateOrderRequestModel get request;
  @JsonKey(ignore: true)
  _$$OrderPlacedImplCopyWith<_$OrderPlacedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSuccessImplCopyWith<$Res> {
  factory _$$PaymentSuccessImplCopyWith(_$PaymentSuccessImpl value,
          $Res Function(_$PaymentSuccessImpl) then) =
      __$$PaymentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderNumber});
}

/// @nodoc
class __$$PaymentSuccessImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$PaymentSuccessImpl>
    implements _$$PaymentSuccessImplCopyWith<$Res> {
  __$$PaymentSuccessImplCopyWithImpl(
      _$PaymentSuccessImpl _value, $Res Function(_$PaymentSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderNumber = null,
  }) {
    return _then(_$PaymentSuccessImpl(
      orderNumber: null == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSuccessImpl implements _PaymentSuccess {
  const _$PaymentSuccessImpl({required this.orderNumber});

  @override
  final String orderNumber;

  @override
  String toString() {
    return 'OrderEvent.paymentSuccess(orderNumber: $orderNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccessImpl &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      __$$PaymentSuccessImplCopyWithImpl<_$PaymentSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderRequestModel request) placed,
    required TResult Function(String orderNumber) paymentSuccess,
    required TResult Function() paymentCancelled,
    required TResult Function() reset,
  }) {
    return paymentSuccess(orderNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderRequestModel request)? placed,
    TResult? Function(String orderNumber)? paymentSuccess,
    TResult? Function()? paymentCancelled,
    TResult? Function()? reset,
  }) {
    return paymentSuccess?.call(orderNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderRequestModel request)? placed,
    TResult Function(String orderNumber)? paymentSuccess,
    TResult Function()? paymentCancelled,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(orderNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPlaced value) placed,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_Reset value) reset,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderPlaced value)? placed,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentCancelled value)? paymentCancelled,
    TResult? Function(_Reset value)? reset,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPlaced value)? placed,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSuccess implements OrderEvent {
  const factory _PaymentSuccess({required final String orderNumber}) =
      _$PaymentSuccessImpl;

  String get orderNumber;
  @JsonKey(ignore: true)
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentCancelledImplCopyWith<$Res> {
  factory _$$PaymentCancelledImplCopyWith(_$PaymentCancelledImpl value,
          $Res Function(_$PaymentCancelledImpl) then) =
      __$$PaymentCancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentCancelledImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$PaymentCancelledImpl>
    implements _$$PaymentCancelledImplCopyWith<$Res> {
  __$$PaymentCancelledImplCopyWithImpl(_$PaymentCancelledImpl _value,
      $Res Function(_$PaymentCancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PaymentCancelledImpl implements _PaymentCancelled {
  const _$PaymentCancelledImpl();

  @override
  String toString() {
    return 'OrderEvent.paymentCancelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentCancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderRequestModel request) placed,
    required TResult Function(String orderNumber) paymentSuccess,
    required TResult Function() paymentCancelled,
    required TResult Function() reset,
  }) {
    return paymentCancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderRequestModel request)? placed,
    TResult? Function(String orderNumber)? paymentSuccess,
    TResult? Function()? paymentCancelled,
    TResult? Function()? reset,
  }) {
    return paymentCancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderRequestModel request)? placed,
    TResult Function(String orderNumber)? paymentSuccess,
    TResult Function()? paymentCancelled,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (paymentCancelled != null) {
      return paymentCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPlaced value) placed,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_Reset value) reset,
  }) {
    return paymentCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderPlaced value)? placed,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentCancelled value)? paymentCancelled,
    TResult? Function(_Reset value)? reset,
  }) {
    return paymentCancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPlaced value)? placed,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (paymentCancelled != null) {
      return paymentCancelled(this);
    }
    return orElse();
  }
}

abstract class _PaymentCancelled implements OrderEvent {
  const factory _PaymentCancelled() = _$PaymentCancelledImpl;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'OrderEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateOrderRequestModel request) placed,
    required TResult Function(String orderNumber) paymentSuccess,
    required TResult Function() paymentCancelled,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateOrderRequestModel request)? placed,
    TResult? Function(String orderNumber)? paymentSuccess,
    TResult? Function()? paymentCancelled,
    TResult? Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateOrderRequestModel request)? placed,
    TResult Function(String orderNumber)? paymentSuccess,
    TResult Function()? paymentCancelled,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderPlaced value) placed,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentCancelled value) paymentCancelled,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderPlaced value)? placed,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentCancelled value)? paymentCancelled,
    TResult? Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderPlaced value)? placed,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentCancelled value)? paymentCancelled,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements OrderEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
mixin _$OrderState {
  OrderStatus get status => throw _privateConstructorUsedError;
  OrderModel? get order => throw _privateConstructorUsedError;
  String? get paymentUrl => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {OrderStatus status,
      OrderModel? order,
      String? paymentUrl,
      ApiErrorModel? error});

  $OrderModelCopyWith<$Res>? get order;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? order = freezed,
    Object? paymentUrl = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderModelCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OrderStatus status,
      OrderModel? order,
      String? paymentUrl,
      ApiErrorModel? error});

  @override
  $OrderModelCopyWith<$Res>? get order;
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? order = freezed,
    Object? paymentUrl = freezed,
    Object? error = freezed,
  }) {
    return _then(_$OrderStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel?,
      paymentUrl: freezed == paymentUrl
          ? _value.paymentUrl
          : paymentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl extends _OrderState {
  const _$OrderStateImpl(
      {this.status = OrderStatus.idle, this.order, this.paymentUrl, this.error})
      : super._();

  @override
  @JsonKey()
  final OrderStatus status;
  @override
  final OrderModel? order;
  @override
  final String? paymentUrl;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'OrderState(status: $status, order: $order, paymentUrl: $paymentUrl, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.paymentUrl, paymentUrl) ||
                other.paymentUrl == paymentUrl) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, order, paymentUrl, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState extends OrderState {
  const factory _OrderState(
      {final OrderStatus status,
      final OrderModel? order,
      final String? paymentUrl,
      final ApiErrorModel? error}) = _$OrderStateImpl;
  const _OrderState._() : super._();

  @override
  OrderStatus get status;
  @override
  OrderModel? get order;
  @override
  String? get paymentUrl;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
