// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesData _$CategoriesDataFromJson(Map<String, dynamic> json) {
  return _CategoriesData.fromJson(json);
}

/// @nodoc
mixin _$CategoriesData {
  @JsonKey(name: 'items')
  List<Category> get categories => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasPreviousPage => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesDataCopyWith<CategoriesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDataCopyWith<$Res> {
  factory $CategoriesDataCopyWith(
          CategoriesData value, $Res Function(CategoriesData) then) =
      _$CategoriesDataCopyWithImpl<$Res, CategoriesData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'items') List<Category> categories,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class _$CategoriesDataCopyWithImpl<$Res, $Val extends CategoriesData>
    implements $CategoriesDataCopyWith<$Res> {
  _$CategoriesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? hasPreviousPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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
abstract class _$$CategoriesDataImplCopyWith<$Res>
    implements $CategoriesDataCopyWith<$Res> {
  factory _$$CategoriesDataImplCopyWith(_$CategoriesDataImpl value,
          $Res Function(_$CategoriesDataImpl) then) =
      __$$CategoriesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'items') List<Category> categories,
      int totalCount,
      int pageNumber,
      int pageSize,
      int totalPages,
      bool hasPreviousPage,
      bool hasNextPage});
}

/// @nodoc
class __$$CategoriesDataImplCopyWithImpl<$Res>
    extends _$CategoriesDataCopyWithImpl<$Res, _$CategoriesDataImpl>
    implements _$$CategoriesDataImplCopyWith<$Res> {
  __$$CategoriesDataImplCopyWithImpl(
      _$CategoriesDataImpl _value, $Res Function(_$CategoriesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? totalCount = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalPages = null,
    Object? hasPreviousPage = null,
    Object? hasNextPage = null,
  }) {
    return _then(_$CategoriesDataImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
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
class _$CategoriesDataImpl implements _CategoriesData {
  const _$CategoriesDataImpl(
      {@JsonKey(name: 'items') required final List<Category> categories,
      required this.totalCount,
      required this.pageNumber,
      required this.pageSize,
      required this.totalPages,
      required this.hasPreviousPage,
      required this.hasNextPage})
      : _categories = categories;

  factory _$CategoriesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesDataImplFromJson(json);

  final List<Category> _categories;
  @override
  @JsonKey(name: 'items')
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
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
    return 'CategoriesData(categories: $categories, totalCount: $totalCount, pageNumber: $pageNumber, pageSize: $pageSize, totalPages: $totalPages, hasPreviousPage: $hasPreviousPage, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDataImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
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
      const DeepCollectionEquality().hash(_categories),
      totalCount,
      pageNumber,
      pageSize,
      totalPages,
      hasPreviousPage,
      hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesDataImplCopyWith<_$CategoriesDataImpl> get copyWith =>
      __$$CategoriesDataImplCopyWithImpl<_$CategoriesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesDataImplToJson(
      this,
    );
  }
}

abstract class _CategoriesData implements CategoriesData {
  const factory _CategoriesData(
      {@JsonKey(name: 'items') required final List<Category> categories,
      required final int totalCount,
      required final int pageNumber,
      required final int pageSize,
      required final int totalPages,
      required final bool hasPreviousPage,
      required final bool hasNextPage}) = _$CategoriesDataImpl;

  factory _CategoriesData.fromJson(Map<String, dynamic> json) =
      _$CategoriesDataImpl.fromJson;

  @override
  @JsonKey(name: 'items')
  List<Category> get categories;
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
  _$$CategoriesDataImplCopyWith<_$CategoriesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
