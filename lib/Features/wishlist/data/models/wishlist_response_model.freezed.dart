// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistResponseModel _$WishlistResponseModelFromJson(
    Map<String, dynamic> json) {
  return _WishlistResponseModel.fromJson(json);
}

/// @nodoc
mixin _$WishlistResponseModel {
  List<WishlistItemModel> get items => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistResponseModelCopyWith<WishlistResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistResponseModelCopyWith<$Res> {
  factory $WishlistResponseModelCopyWith(WishlistResponseModel value,
          $Res Function(WishlistResponseModel) then) =
      _$WishlistResponseModelCopyWithImpl<$Res, WishlistResponseModel>;
  @useResult
  $Res call(
      {List<WishlistItemModel> items,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages});
}

/// @nodoc
class _$WishlistResponseModelCopyWithImpl<$Res,
        $Val extends WishlistResponseModel>
    implements $WishlistResponseModelCopyWith<$Res> {
  _$WishlistResponseModelCopyWithImpl(this._value, this._then);

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
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistItemModel>,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistResponseModelImplCopyWith<$Res>
    implements $WishlistResponseModelCopyWith<$Res> {
  factory _$$WishlistResponseModelImplCopyWith(
          _$WishlistResponseModelImpl value,
          $Res Function(_$WishlistResponseModelImpl) then) =
      __$$WishlistResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WishlistItemModel> items,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages});
}

/// @nodoc
class __$$WishlistResponseModelImplCopyWithImpl<$Res>
    extends _$WishlistResponseModelCopyWithImpl<$Res,
        _$WishlistResponseModelImpl>
    implements _$$WishlistResponseModelImplCopyWith<$Res> {
  __$$WishlistResponseModelImplCopyWithImpl(_$WishlistResponseModelImpl _value,
      $Res Function(_$WishlistResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
  }) {
    return _then(_$WishlistResponseModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistItemModel>,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistResponseModelImpl implements _WishlistResponseModel {
  const _$WishlistResponseModelImpl(
      {required final List<WishlistItemModel> items,
      required this.totalCount,
      required this.pageNumber,
      required this.pageSize,
      required this.totalPages})
      : _items = items;

  factory _$WishlistResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistResponseModelImplFromJson(json);

  final List<WishlistItemModel> _items;
  @override
  List<WishlistItemModel> get items {
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
  String toString() {
    return 'WishlistResponseModel(items: $items, totalCount: $totalCount, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistResponseModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalCount,
      pageNumber,
      pageSize,
      totalPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistResponseModelImplCopyWith<_$WishlistResponseModelImpl>
      get copyWith => __$$WishlistResponseModelImplCopyWithImpl<
          _$WishlistResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistResponseModelImplToJson(
      this,
    );
  }
}

abstract class _WishlistResponseModel implements WishlistResponseModel {
  const factory _WishlistResponseModel(
      {required final List<WishlistItemModel> items,
      required final int totalCount,
      required final int pageNumber,
      required final int pageSize,
      required final int totalPages}) = _$WishlistResponseModelImpl;

  factory _WishlistResponseModel.fromJson(Map<String, dynamic> json) =
      _$WishlistResponseModelImpl.fromJson;

  @override
  List<WishlistItemModel> get items;
  @override
  int get totalCount;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  int get totalPages;
  @override
  @JsonKey(ignore: true)
  _$$WishlistResponseModelImplCopyWith<_$WishlistResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
