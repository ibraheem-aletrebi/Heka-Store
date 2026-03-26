// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reloaded,
    required TResult Function() nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reloaded,
    TResult? Function()? nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reloaded,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reloaded,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reloaded,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reloaded,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEventCopyWith<$Res> {
  factory $CategoriesEventCopyWith(
          CategoriesEvent value, $Res Function(CategoriesEvent) then) =
      _$CategoriesEventCopyWithImpl<$Res, CategoriesEvent>;
}

/// @nodoc
class _$CategoriesEventCopyWithImpl<$Res, $Val extends CategoriesEvent>
    implements $CategoriesEventCopyWith<$Res> {
  _$CategoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'CategoriesEvent.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reloaded,
    required TResult Function() nextPageFetched,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reloaded,
    TResult? Function()? nextPageFetched,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reloaded,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reloaded,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reloaded,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reloaded,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CategoriesEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ReloadedImplCopyWith<$Res> {
  factory _$$ReloadedImplCopyWith(
          _$ReloadedImpl value, $Res Function(_$ReloadedImpl) then) =
      __$$ReloadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadedImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$ReloadedImpl>
    implements _$$ReloadedImplCopyWith<$Res> {
  __$$ReloadedImplCopyWithImpl(
      _$ReloadedImpl _value, $Res Function(_$ReloadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReloadedImpl implements _Reloaded {
  const _$ReloadedImpl();

  @override
  String toString() {
    return 'CategoriesEvent.reloaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reloaded,
    required TResult Function() nextPageFetched,
  }) {
    return reloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reloaded,
    TResult? Function()? nextPageFetched,
  }) {
    return reloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reloaded,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (reloaded != null) {
      return reloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reloaded,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return reloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reloaded,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return reloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reloaded,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (reloaded != null) {
      return reloaded(this);
    }
    return orElse();
  }
}

abstract class _Reloaded implements CategoriesEvent {
  const factory _Reloaded() = _$ReloadedImpl;
}

/// @nodoc
abstract class _$$NextPageFetchedImplCopyWith<$Res> {
  factory _$$NextPageFetchedImplCopyWith(_$NextPageFetchedImpl value,
          $Res Function(_$NextPageFetchedImpl) then) =
      __$$NextPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageFetchedImplCopyWithImpl<$Res>
    extends _$CategoriesEventCopyWithImpl<$Res, _$NextPageFetchedImpl>
    implements _$$NextPageFetchedImplCopyWith<$Res> {
  __$$NextPageFetchedImplCopyWithImpl(
      _$NextPageFetchedImpl _value, $Res Function(_$NextPageFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageFetchedImpl implements _NextPageFetched {
  const _$NextPageFetchedImpl();

  @override
  String toString() {
    return 'CategoriesEvent.nextPageFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPageFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reloaded,
    required TResult Function() nextPageFetched,
  }) {
    return nextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reloaded,
    TResult? Function()? nextPageFetched,
  }) {
    return nextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reloaded,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Reloaded value) reloaded,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return nextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Reloaded value)? reloaded,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return nextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Reloaded value)? reloaded,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageFetched implements CategoriesEvent {
  const factory _NextPageFetched() = _$NextPageFetchedImpl;
}

/// @nodoc
mixin _$CategoriesState {
  List<Category> get categories => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesStateCopyWith<CategoriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res, CategoriesState>;
  @useResult
  $Res call(
      {List<Category> categories,
      bool isLoading,
      bool isRefreshing,
      bool isLoadingMore,
      bool hasNextPage,
      int currentPage,
      ApiErrorModel? error});
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res, $Val extends CategoriesState>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? isLoadingMore = null,
    Object? hasNextPage = null,
    Object? currentPage = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesStateImplCopyWith<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  factory _$$CategoriesStateImplCopyWith(_$CategoriesStateImpl value,
          $Res Function(_$CategoriesStateImpl) then) =
      __$$CategoriesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Category> categories,
      bool isLoading,
      bool isRefreshing,
      bool isLoadingMore,
      bool hasNextPage,
      int currentPage,
      ApiErrorModel? error});
}

/// @nodoc
class __$$CategoriesStateImplCopyWithImpl<$Res>
    extends _$CategoriesStateCopyWithImpl<$Res, _$CategoriesStateImpl>
    implements _$$CategoriesStateImplCopyWith<$Res> {
  __$$CategoriesStateImplCopyWithImpl(
      _$CategoriesStateImpl _value, $Res Function(_$CategoriesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? isLoading = null,
    Object? isRefreshing = null,
    Object? isLoadingMore = null,
    Object? hasNextPage = null,
    Object? currentPage = null,
    Object? error = freezed,
  }) {
    return _then(_$CategoriesStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$CategoriesStateImpl implements _CategoriesState {
  const _$CategoriesStateImpl(
      {final List<Category> categories = const [],
      this.isLoading = false,
      this.isRefreshing = false,
      this.isLoadingMore = false,
      this.hasNextPage = false,
      this.currentPage = 1,
      this.error})
      : _categories = categories;

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final int currentPage;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'CategoriesState(categories: $categories, isLoading: $isLoading, isRefreshing: $isRefreshing, isLoadingMore: $isLoadingMore, hasNextPage: $hasNextPage, currentPage: $currentPage, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      isLoading,
      isRefreshing,
      isLoadingMore,
      hasNextPage,
      currentPage,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      __$$CategoriesStateImplCopyWithImpl<_$CategoriesStateImpl>(
          this, _$identity);
}

abstract class _CategoriesState implements CategoriesState {
  const factory _CategoriesState(
      {final List<Category> categories,
      final bool isLoading,
      final bool isRefreshing,
      final bool isLoadingMore,
      final bool hasNextPage,
      final int currentPage,
      final ApiErrorModel? error}) = _$CategoriesStateImpl;

  @override
  List<Category> get categories;
  @override
  bool get isLoading;
  @override
  bool get isRefreshing;
  @override
  bool get isLoadingMore;
  @override
  bool get hasNextPage;
  @override
  int get currentPage;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesStateImplCopyWith<_$CategoriesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
