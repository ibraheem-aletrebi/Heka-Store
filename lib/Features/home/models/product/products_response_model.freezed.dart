// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsResponseModel _$ProductsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ProductsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ProductsResponseModel {
  List<ProductModel> get products => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasPreviousPage => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsResponseModelCopyWith<ProductsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsResponseModelCopyWith<$Res> {
  factory $ProductsResponseModelCopyWith(ProductsResponseModel value,
          $Res Function(ProductsResponseModel) then) =
      _$ProductsResponseModelCopyWithImpl<$Res, ProductsResponseModel>;
  @useResult
  $Res call(
      {List<ProductModel> products,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class _$ProductsResponseModelCopyWithImpl<$Res,
        $Val extends ProductsResponseModel>
    implements $ProductsResponseModelCopyWith<$Res> {
  _$ProductsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? hasPreviousPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
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
abstract class _$$ProductsResponseModelImplCopyWith<$Res>
    implements $ProductsResponseModelCopyWith<$Res> {
  factory _$$ProductsResponseModelImplCopyWith(
          _$ProductsResponseModelImpl value,
          $Res Function(_$ProductsResponseModelImpl) then) =
      __$$ProductsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel> products,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class __$$ProductsResponseModelImplCopyWithImpl<$Res>
    extends _$ProductsResponseModelCopyWithImpl<$Res,
        _$ProductsResponseModelImpl>
    implements _$$ProductsResponseModelImplCopyWith<$Res> {
  __$$ProductsResponseModelImplCopyWithImpl(_$ProductsResponseModelImpl _value,
      $Res Function(_$ProductsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? hasPreviousPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$ProductsResponseModelImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
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
class _$ProductsResponseModelImpl implements _ProductsResponseModel {
  const _$ProductsResponseModelImpl(
      {required final List<ProductModel> products,
      required this.totalCount,
      required this.pageNumber,
      required this.pageSize,
      required this.totalPages,
      required this.hasPreviousPage,
      required this.hasNextPage})
      : _products = products;

  factory _$ProductsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsResponseModelImplFromJson(json);

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
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
    return 'ProductsResponseModel(products: $products, totalCount: $totalCount, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsResponseModelImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
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
      const DeepCollectionEquality().hash(_products),
      totalCount,
      pageNumber,
      pageSize,
      totalPages,
      hasPreviousPage,
      hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsResponseModelImplCopyWith<_$ProductsResponseModelImpl>
      get copyWith => __$$ProductsResponseModelImplCopyWithImpl<
          _$ProductsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ProductsResponseModel implements ProductsResponseModel {
  const factory _ProductsResponseModel(
      {required final List<ProductModel> products,
      required final int totalCount,
      required final int pageNumber,
      required final int pageSize,
      required final int totalPages,
      required final bool hasPreviousPage,
      required final bool hasNextPage}) = _$ProductsResponseModelImpl;

  factory _ProductsResponseModel.fromJson(Map<String, dynamic> json) =
      _$ProductsResponseModelImpl.fromJson;

  @override
  List<ProductModel> get products;
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
  _$$ProductsResponseModelImplCopyWith<_$ProductsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
