// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

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
    extends _$WishlistEventCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WishlistEvent.loaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WishlistEvent.loaded'));
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
    required TResult Function() reLoaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(int productId)? toggled,
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
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements WishlistEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$ReLoadedImplCopyWith<$Res> {
  factory _$$ReLoadedImplCopyWith(
          _$ReLoadedImpl value, $Res Function(_$ReLoadedImpl) then) =
      __$$ReLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReLoadedImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$ReLoadedImpl>
    implements _$$ReLoadedImplCopyWith<$Res> {
  __$$ReLoadedImplCopyWithImpl(
      _$ReLoadedImpl _value, $Res Function(_$ReLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReLoadedImpl with DiagnosticableTreeMixin implements _ReLoaded {
  const _$ReLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WishlistEvent.reLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'WishlistEvent.reLoaded'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
  }) {
    return reLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
  }) {
    return reLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (reLoaded != null) {
      return reLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return reLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return reLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (reLoaded != null) {
      return reLoaded(this);
    }
    return orElse();
  }
}

abstract class _ReLoaded implements WishlistEvent {
  const factory _ReLoaded() = _$ReLoadedImpl;
}

/// @nodoc
abstract class _$$ToggledImplCopyWith<$Res> {
  factory _$$ToggledImplCopyWith(
          _$ToggledImpl value, $Res Function(_$ToggledImpl) then) =
      __$$ToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$ToggledImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$ToggledImpl>
    implements _$$ToggledImplCopyWith<$Res> {
  __$$ToggledImplCopyWithImpl(
      _$ToggledImpl _value, $Res Function(_$ToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$ToggledImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggledImpl with DiagnosticableTreeMixin implements _Toggled {
  const _$ToggledImpl(this.productId);

  @override
  final int productId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WishlistEvent.toggled(productId: $productId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WishlistEvent.toggled'))
      ..add(DiagnosticsProperty('productId', productId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggledImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggledImplCopyWith<_$ToggledImpl> get copyWith =>
      __$$ToggledImplCopyWithImpl<_$ToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
  }) {
    return toggled(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
  }) {
    return toggled?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return toggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return toggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (toggled != null) {
      return toggled(this);
    }
    return orElse();
  }
}

abstract class _Toggled implements WishlistEvent {
  const factory _Toggled(final int productId) = _$ToggledImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$ToggledImplCopyWith<_$ToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextPageFetchedImplCopyWith<$Res> {
  factory _$$NextPageFetchedImplCopyWith(_$NextPageFetchedImpl value,
          $Res Function(_$NextPageFetchedImpl) then) =
      __$$NextPageFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPageFetchedImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$NextPageFetchedImpl>
    implements _$$NextPageFetchedImplCopyWith<$Res> {
  __$$NextPageFetchedImplCopyWithImpl(
      _$NextPageFetchedImpl _value, $Res Function(_$NextPageFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextPageFetchedImpl
    with DiagnosticableTreeMixin
    implements _NextPageFetched {
  const _$NextPageFetchedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WishlistEvent.nextPageFetched()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'WishlistEvent.nextPageFetched'));
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
    required TResult Function() reLoaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
  }) {
    return nextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
  }) {
    return nextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(int productId)? toggled,
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
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
  }) {
    return nextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
  }) {
    return nextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    required TResult orElse(),
  }) {
    if (nextPageFetched != null) {
      return nextPageFetched(this);
    }
    return orElse();
  }
}

abstract class _NextPageFetched implements WishlistEvent {
  const factory _NextPageFetched() = _$NextPageFetchedImpl;
}

/// @nodoc
mixin _$WishlistState {
// ─── Authenticated ────────────────────────────
  List<WishlistItemModel> get items => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<int> get loadingProductIds =>
      throw _privateConstructorUsedError; // ─── Shared ───────────────────────────────────
  int? get lastToggledProductId => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call(
      {List<WishlistItemModel> items,
      bool isLoading,
      bool isLoadingMore,
      bool hasNextPage,
      int currentPage,
      List<int> loadingProductIds,
      int? lastToggledProductId,
      ApiErrorModel? error});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasNextPage = null,
    Object? currentPage = null,
    Object? loadingProductIds = null,
    Object? lastToggledProductId = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistItemModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      loadingProductIds: null == loadingProductIds
          ? _value.loadingProductIds
          : loadingProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lastToggledProductId: freezed == lastToggledProductId
          ? _value.lastToggledProductId
          : lastToggledProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WishlistItemModel> items,
      bool isLoading,
      bool isLoadingMore,
      bool hasNextPage,
      int currentPage,
      List<int> loadingProductIds,
      int? lastToggledProductId,
      ApiErrorModel? error});
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isLoading = null,
    Object? isLoadingMore = null,
    Object? hasNextPage = null,
    Object? currentPage = null,
    Object? loadingProductIds = null,
    Object? lastToggledProductId = freezed,
    Object? error = freezed,
  }) {
    return _then(_$WishlistStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<WishlistItemModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      loadingProductIds: null == loadingProductIds
          ? _value._loadingProductIds
          : loadingProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lastToggledProductId: freezed == lastToggledProductId
          ? _value.lastToggledProductId
          : lastToggledProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$WishlistStateImpl extends _WishlistState with DiagnosticableTreeMixin {
  const _$WishlistStateImpl(
      {final List<WishlistItemModel> items = const [],
      this.isLoading = false,
      this.isLoadingMore = false,
      this.hasNextPage = false,
      this.currentPage = 1,
      final List<int> loadingProductIds = const [],
      this.lastToggledProductId,
      this.error})
      : _items = items,
        _loadingProductIds = loadingProductIds,
        super._();

// ─── Authenticated ────────────────────────────
  final List<WishlistItemModel> _items;
// ─── Authenticated ────────────────────────────
  @override
  @JsonKey()
  List<WishlistItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasNextPage;
  @override
  @JsonKey()
  final int currentPage;
  final List<int> _loadingProductIds;
  @override
  @JsonKey()
  List<int> get loadingProductIds {
    if (_loadingProductIds is EqualUnmodifiableListView)
      return _loadingProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadingProductIds);
  }

// ─── Shared ───────────────────────────────────
  @override
  final int? lastToggledProductId;
  @override
  final ApiErrorModel? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WishlistState(items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasNextPage: $hasNextPage, currentPage: $currentPage, loadingProductIds: $loadingProductIds, lastToggledProductId: $lastToggledProductId, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WishlistState'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isLoadingMore', isLoadingMore))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('loadingProductIds', loadingProductIds))
      ..add(DiagnosticsProperty('lastToggledProductId', lastToggledProductId))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._loadingProductIds, _loadingProductIds) &&
            (identical(other.lastToggledProductId, lastToggledProductId) ||
                other.lastToggledProductId == lastToggledProductId) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      isLoading,
      isLoadingMore,
      hasNextPage,
      currentPage,
      const DeepCollectionEquality().hash(_loadingProductIds),
      lastToggledProductId,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);
}

abstract class _WishlistState extends WishlistState {
  const factory _WishlistState(
      {final List<WishlistItemModel> items,
      final bool isLoading,
      final bool isLoadingMore,
      final bool hasNextPage,
      final int currentPage,
      final List<int> loadingProductIds,
      final int? lastToggledProductId,
      final ApiErrorModel? error}) = _$WishlistStateImpl;
  const _WishlistState._() : super._();

  @override // ─── Authenticated ────────────────────────────
  List<WishlistItemModel> get items;
  @override
  bool get isLoading;
  @override
  bool get isLoadingMore;
  @override
  bool get hasNextPage;
  @override
  int get currentPage;
  @override
  List<int> get loadingProductIds;
  @override // ─── Shared ───────────────────────────────────
  int? get lastToggledProductId;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
