// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get code => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get nameAr => throw _privateConstructorUsedError;
  String get nameEn => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get parentCategoryCode => throw _privateConstructorUsedError;
  int? get parentCategoryId => throw _privateConstructorUsedError;
  int get productCount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<Category> get subCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {String code,
      int id,
      String nameAr,
      String nameEn,
      String description,
      String imageUrl,
      String? parentCategoryCode,
      int? parentCategoryId,
      int productCount,
      String status,
      DateTime createdAt,
      DateTime? updatedAt,
      List<Category> subCategories});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? id = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? parentCategoryCode = freezed,
    Object? parentCategoryId = freezed,
    Object? productCount = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? subCategories = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryCode: freezed == parentCategoryCode
          ? _value.parentCategoryCode
          : parentCategoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subCategories: null == subCategories
          ? _value.subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      int id,
      String nameAr,
      String nameEn,
      String description,
      String imageUrl,
      String? parentCategoryCode,
      int? parentCategoryId,
      int productCount,
      String status,
      DateTime createdAt,
      DateTime? updatedAt,
      List<Category> subCategories});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? id = null,
    Object? nameAr = null,
    Object? nameEn = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? parentCategoryCode = freezed,
    Object? parentCategoryId = freezed,
    Object? productCount = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? subCategories = null,
  }) {
    return _then(_$CategoryImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nameAr: null == nameAr
          ? _value.nameAr
          : nameAr // ignore: cast_nullable_to_non_nullable
              as String,
      nameEn: null == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      parentCategoryCode: freezed == parentCategoryCode
          ? _value.parentCategoryCode
          : parentCategoryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryId: freezed == parentCategoryId
          ? _value.parentCategoryId
          : parentCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      productCount: null == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subCategories: null == subCategories
          ? _value._subCategories
          : subCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.code,
      required this.id,
      required this.nameAr,
      required this.nameEn,
      this.description = '',
      this.imageUrl = '',
      this.parentCategoryCode,
      this.parentCategoryId,
      this.productCount = 0,
      this.status = 'Active',
      required this.createdAt,
      this.updatedAt,
      final List<Category> subCategories = const []})
      : _subCategories = subCategories;

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final String code;
  @override
  final int id;
  @override
  final String nameAr;
  @override
  final String nameEn;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String imageUrl;
  @override
  final String? parentCategoryCode;
  @override
  final int? parentCategoryId;
  @override
  @JsonKey()
  final int productCount;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  final List<Category> _subCategories;
  @override
  @JsonKey()
  List<Category> get subCategories {
    if (_subCategories is EqualUnmodifiableListView) return _subCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategories);
  }

  @override
  String toString() {
    return 'Category(code: $code, id: $id, nameAr: $nameAr, nameEn: $nameEn, description: $description, imageUrl: $imageUrl, parentCategoryCode: $parentCategoryCode, parentCategoryId: $parentCategoryId, productCount: $productCount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, subCategories: $subCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.parentCategoryCode, parentCategoryCode) ||
                other.parentCategoryCode == parentCategoryCode) &&
            (identical(other.parentCategoryId, parentCategoryId) ||
                other.parentCategoryId == parentCategoryId) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._subCategories, _subCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      id,
      nameAr,
      nameEn,
      description,
      imageUrl,
      parentCategoryCode,
      parentCategoryId,
      productCount,
      status,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_subCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final String code,
      required final int id,
      required final String nameAr,
      required final String nameEn,
      final String description,
      final String imageUrl,
      final String? parentCategoryCode,
      final int? parentCategoryId,
      final int productCount,
      final String status,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final List<Category> subCategories}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  String get code;
  @override
  int get id;
  @override
  String get nameAr;
  @override
  String get nameEn;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  String? get parentCategoryCode;
  @override
  int? get parentCategoryId;
  @override
  int get productCount;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<Category> get subCategories;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
