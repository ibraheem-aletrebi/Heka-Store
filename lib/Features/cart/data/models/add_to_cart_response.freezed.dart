// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddToCartResponse _$AddToCartResponseFromJson(Map<String, dynamic> json) {
  return _AddToCartResponse.fromJson(json);
}

/// @nodoc
mixin _$AddToCartResponse {
  bool get success => throw _privateConstructorUsedError;
  CartItemModel get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int? get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToCartResponseCopyWith<AddToCartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartResponseCopyWith<$Res> {
  factory $AddToCartResponseCopyWith(
          AddToCartResponse value, $Res Function(AddToCartResponse) then) =
      _$AddToCartResponseCopyWithImpl<$Res, AddToCartResponse>;
  @useResult
  $Res call({bool success, CartItemModel data, String message, int? count});

  $CartItemModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AddToCartResponseCopyWithImpl<$Res, $Val extends AddToCartResponse>
    implements $AddToCartResponseCopyWith<$Res> {
  _$AddToCartResponseCopyWithImpl(this._value, this._then);

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
    Object? count = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartItemModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartItemModelCopyWith<$Res> get data {
    return $CartItemModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddToCartResponseImplCopyWith<$Res>
    implements $AddToCartResponseCopyWith<$Res> {
  factory _$$AddToCartResponseImplCopyWith(_$AddToCartResponseImpl value,
          $Res Function(_$AddToCartResponseImpl) then) =
      __$$AddToCartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, CartItemModel data, String message, int? count});

  @override
  $CartItemModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AddToCartResponseImplCopyWithImpl<$Res>
    extends _$AddToCartResponseCopyWithImpl<$Res, _$AddToCartResponseImpl>
    implements _$$AddToCartResponseImplCopyWith<$Res> {
  __$$AddToCartResponseImplCopyWithImpl(_$AddToCartResponseImpl _value,
      $Res Function(_$AddToCartResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? message = null,
    Object? count = freezed,
  }) {
    return _then(_$AddToCartResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartItemModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddToCartResponseImpl implements _AddToCartResponse {
  const _$AddToCartResponseImpl(
      {required this.success,
      required this.data,
      required this.message,
      this.count});

  factory _$AddToCartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddToCartResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final CartItemModel data;
  @override
  final String message;
  @override
  final int? count;

  @override
  String toString() {
    return 'AddToCartResponse(success: $success, data: $data, message: $message, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, data, message, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartResponseImplCopyWith<_$AddToCartResponseImpl> get copyWith =>
      __$$AddToCartResponseImplCopyWithImpl<_$AddToCartResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddToCartResponseImplToJson(
      this,
    );
  }
}

abstract class _AddToCartResponse implements AddToCartResponse {
  const factory _AddToCartResponse(
      {required final bool success,
      required final CartItemModel data,
      required final String message,
      final int? count}) = _$AddToCartResponseImpl;

  factory _AddToCartResponse.fromJson(Map<String, dynamic> json) =
      _$AddToCartResponseImpl.fromJson;

  @override
  bool get success;
  @override
  CartItemModel get data;
  @override
  String get message;
  @override
  int? get count;
  @override
  @JsonKey(ignore: true)
  _$$AddToCartResponseImplCopyWith<_$AddToCartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
