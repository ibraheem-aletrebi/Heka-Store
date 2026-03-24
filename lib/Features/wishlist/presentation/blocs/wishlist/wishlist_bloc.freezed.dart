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
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
    required TResult Function(int productId) guestToggled,
    required TResult Function() syncGuestWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
    TResult? Function(int productId)? guestToggled,
    TResult? Function()? syncGuestWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    TResult Function(int productId)? guestToggled,
    TResult Function()? syncGuestWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_GuestToggled value) guestToggled,
    required TResult Function(_SyncGuestWishlist value) syncGuestWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_GuestToggled value)? guestToggled,
    TResult? Function(_SyncGuestWishlist value)? syncGuestWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_GuestToggled value)? guestToggled,
    TResult Function(_SyncGuestWishlist value)? syncGuestWishlist,
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

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl();

  @override
  String toString() {
    return 'WishlistEvent.loaded()';
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
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
    required TResult Function(int productId) guestToggled,
    required TResult Function() syncGuestWishlist,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
    TResult? Function(int productId)? guestToggled,
    TResult? Function()? syncGuestWishlist,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    TResult Function(int productId)? guestToggled,
    TResult Function()? syncGuestWishlist,
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
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_GuestToggled value) guestToggled,
    required TResult Function(_SyncGuestWishlist value) syncGuestWishlist,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_GuestToggled value)? guestToggled,
    TResult? Function(_SyncGuestWishlist value)? syncGuestWishlist,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_GuestToggled value)? guestToggled,
    TResult Function(_SyncGuestWishlist value)? syncGuestWishlist,
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

class _$ToggledImpl implements _Toggled {
  const _$ToggledImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'WishlistEvent.toggled(productId: $productId)';
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
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
    required TResult Function(int productId) guestToggled,
    required TResult Function() syncGuestWishlist,
  }) {
    return toggled(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
    TResult? Function(int productId)? guestToggled,
    TResult? Function()? syncGuestWishlist,
  }) {
    return toggled?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    TResult Function(int productId)? guestToggled,
    TResult Function()? syncGuestWishlist,
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
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_GuestToggled value) guestToggled,
    required TResult Function(_SyncGuestWishlist value) syncGuestWishlist,
  }) {
    return toggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_GuestToggled value)? guestToggled,
    TResult? Function(_SyncGuestWishlist value)? syncGuestWishlist,
  }) {
    return toggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_GuestToggled value)? guestToggled,
    TResult Function(_SyncGuestWishlist value)? syncGuestWishlist,
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

class _$NextPageFetchedImpl implements _NextPageFetched {
  const _$NextPageFetchedImpl();

  @override
  String toString() {
    return 'WishlistEvent.nextPageFetched()';
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
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
    required TResult Function(int productId) guestToggled,
    required TResult Function() syncGuestWishlist,
  }) {
    return nextPageFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
    TResult? Function(int productId)? guestToggled,
    TResult? Function()? syncGuestWishlist,
  }) {
    return nextPageFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    TResult Function(int productId)? guestToggled,
    TResult Function()? syncGuestWishlist,
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
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_GuestToggled value) guestToggled,
    required TResult Function(_SyncGuestWishlist value) syncGuestWishlist,
  }) {
    return nextPageFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_GuestToggled value)? guestToggled,
    TResult? Function(_SyncGuestWishlist value)? syncGuestWishlist,
  }) {
    return nextPageFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_GuestToggled value)? guestToggled,
    TResult Function(_SyncGuestWishlist value)? syncGuestWishlist,
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
abstract class _$$GuestToggledImplCopyWith<$Res> {
  factory _$$GuestToggledImplCopyWith(
          _$GuestToggledImpl value, $Res Function(_$GuestToggledImpl) then) =
      __$$GuestToggledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$GuestToggledImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$GuestToggledImpl>
    implements _$$GuestToggledImplCopyWith<$Res> {
  __$$GuestToggledImplCopyWithImpl(
      _$GuestToggledImpl _value, $Res Function(_$GuestToggledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$GuestToggledImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GuestToggledImpl implements _GuestToggled {
  const _$GuestToggledImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'WishlistEvent.guestToggled(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuestToggledImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuestToggledImplCopyWith<_$GuestToggledImpl> get copyWith =>
      __$$GuestToggledImplCopyWithImpl<_$GuestToggledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
    required TResult Function(int productId) guestToggled,
    required TResult Function() syncGuestWishlist,
  }) {
    return guestToggled(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
    TResult? Function(int productId)? guestToggled,
    TResult? Function()? syncGuestWishlist,
  }) {
    return guestToggled?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    TResult Function(int productId)? guestToggled,
    TResult Function()? syncGuestWishlist,
    required TResult orElse(),
  }) {
    if (guestToggled != null) {
      return guestToggled(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_GuestToggled value) guestToggled,
    required TResult Function(_SyncGuestWishlist value) syncGuestWishlist,
  }) {
    return guestToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_GuestToggled value)? guestToggled,
    TResult? Function(_SyncGuestWishlist value)? syncGuestWishlist,
  }) {
    return guestToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_GuestToggled value)? guestToggled,
    TResult Function(_SyncGuestWishlist value)? syncGuestWishlist,
    required TResult orElse(),
  }) {
    if (guestToggled != null) {
      return guestToggled(this);
    }
    return orElse();
  }
}

abstract class _GuestToggled implements WishlistEvent {
  const factory _GuestToggled(final int productId) = _$GuestToggledImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$GuestToggledImplCopyWith<_$GuestToggledImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SyncGuestWishlistImplCopyWith<$Res> {
  factory _$$SyncGuestWishlistImplCopyWith(_$SyncGuestWishlistImpl value,
          $Res Function(_$SyncGuestWishlistImpl) then) =
      __$$SyncGuestWishlistImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncGuestWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$SyncGuestWishlistImpl>
    implements _$$SyncGuestWishlistImplCopyWith<$Res> {
  __$$SyncGuestWishlistImplCopyWithImpl(_$SyncGuestWishlistImpl _value,
      $Res Function(_$SyncGuestWishlistImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncGuestWishlistImpl implements _SyncGuestWishlist {
  const _$SyncGuestWishlistImpl();

  @override
  String toString() {
    return 'WishlistEvent.syncGuestWishlist()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SyncGuestWishlistImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(int productId) toggled,
    required TResult Function() nextPageFetched,
    required TResult Function(int productId) guestToggled,
    required TResult Function() syncGuestWishlist,
  }) {
    return syncGuestWishlist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(int productId)? toggled,
    TResult? Function()? nextPageFetched,
    TResult? Function(int productId)? guestToggled,
    TResult? Function()? syncGuestWishlist,
  }) {
    return syncGuestWishlist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(int productId)? toggled,
    TResult Function()? nextPageFetched,
    TResult Function(int productId)? guestToggled,
    TResult Function()? syncGuestWishlist,
    required TResult orElse(),
  }) {
    if (syncGuestWishlist != null) {
      return syncGuestWishlist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Toggled value) toggled,
    required TResult Function(_NextPageFetched value) nextPageFetched,
    required TResult Function(_GuestToggled value) guestToggled,
    required TResult Function(_SyncGuestWishlist value) syncGuestWishlist,
  }) {
    return syncGuestWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Toggled value)? toggled,
    TResult? Function(_NextPageFetched value)? nextPageFetched,
    TResult? Function(_GuestToggled value)? guestToggled,
    TResult? Function(_SyncGuestWishlist value)? syncGuestWishlist,
  }) {
    return syncGuestWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Toggled value)? toggled,
    TResult Function(_NextPageFetched value)? nextPageFetched,
    TResult Function(_GuestToggled value)? guestToggled,
    TResult Function(_SyncGuestWishlist value)? syncGuestWishlist,
    required TResult orElse(),
  }) {
    if (syncGuestWishlist != null) {
      return syncGuestWishlist(this);
    }
    return orElse();
  }
}

abstract class _SyncGuestWishlist implements WishlistEvent {
  const factory _SyncGuestWishlist() = _$SyncGuestWishlistImpl;
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
      throw _privateConstructorUsedError; // ─── Guest ────────────────────────────────────
  List<int> get guestProductIds => throw _privateConstructorUsedError;
  bool get isSyncing =>
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
      List<int> guestProductIds,
      bool isSyncing,
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
    Object? guestProductIds = null,
    Object? isSyncing = null,
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
      guestProductIds: null == guestProductIds
          ? _value.guestProductIds
          : guestProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isSyncing: null == isSyncing
          ? _value.isSyncing
          : isSyncing // ignore: cast_nullable_to_non_nullable
              as bool,
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
      List<int> guestProductIds,
      bool isSyncing,
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
    Object? guestProductIds = null,
    Object? isSyncing = null,
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
      guestProductIds: null == guestProductIds
          ? _value._guestProductIds
          : guestProductIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isSyncing: null == isSyncing
          ? _value.isSyncing
          : isSyncing // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$WishlistStateImpl extends _WishlistState {
  const _$WishlistStateImpl(
      {final List<WishlistItemModel> items = const [],
      this.isLoading = false,
      this.isLoadingMore = false,
      this.hasNextPage = false,
      this.currentPage = 1,
      final List<int> loadingProductIds = const [],
      final List<int> guestProductIds = const [],
      this.isSyncing = false,
      this.lastToggledProductId,
      this.error})
      : _items = items,
        _loadingProductIds = loadingProductIds,
        _guestProductIds = guestProductIds,
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

// ─── Guest ────────────────────────────────────
  final List<int> _guestProductIds;
// ─── Guest ────────────────────────────────────
  @override
  @JsonKey()
  List<int> get guestProductIds {
    if (_guestProductIds is EqualUnmodifiableListView) return _guestProductIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_guestProductIds);
  }

  @override
  @JsonKey()
  final bool isSyncing;
// ─── Shared ───────────────────────────────────
  @override
  final int? lastToggledProductId;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'WishlistState(items: $items, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasNextPage: $hasNextPage, currentPage: $currentPage, loadingProductIds: $loadingProductIds, guestProductIds: $guestProductIds, isSyncing: $isSyncing, lastToggledProductId: $lastToggledProductId, error: $error)';
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
            const DeepCollectionEquality()
                .equals(other._guestProductIds, _guestProductIds) &&
            (identical(other.isSyncing, isSyncing) ||
                other.isSyncing == isSyncing) &&
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
      const DeepCollectionEquality().hash(_guestProductIds),
      isSyncing,
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
      final List<int> guestProductIds,
      final bool isSyncing,
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
  @override // ─── Guest ────────────────────────────────────
  List<int> get guestProductIds;
  @override
  bool get isSyncing;
  @override // ─── Shared ───────────────────────────────────
  int? get lastToggledProductId;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
