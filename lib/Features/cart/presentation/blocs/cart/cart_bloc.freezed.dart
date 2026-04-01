// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
    extends _$CartEventCopyWithImpl<$Res, _$LoadedImpl>
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
    return 'CartEvent.loaded()';
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
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
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
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartEvent {
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
    extends _$CartEventCopyWithImpl<$Res, _$ReLoadedImpl>
    implements _$$ReLoadedImplCopyWith<$Res> {
  __$$ReLoadedImplCopyWithImpl(
      _$ReLoadedImpl _value, $Res Function(_$ReLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReLoadedImpl implements _ReLoaded {
  const _$ReLoadedImpl();

  @override
  String toString() {
    return 'CartEvent.reLoaded()';
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
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return reLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return reLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
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
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return reLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return reLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (reLoaded != null) {
      return reLoaded(this);
    }
    return orElse();
  }
}

abstract class _ReLoaded implements CartEvent {
  const factory _ReLoaded() = _$ReLoadedImpl;
}

/// @nodoc
abstract class _$$ItemAddedImplCopyWith<$Res> {
  factory _$$ItemAddedImplCopyWith(
          _$ItemAddedImpl value, $Res Function(_$ItemAddedImpl) then) =
      __$$ItemAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId, int quantity, List<int>? selectedVariantIds});
}

/// @nodoc
class __$$ItemAddedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ItemAddedImpl>
    implements _$$ItemAddedImplCopyWith<$Res> {
  __$$ItemAddedImplCopyWithImpl(
      _$ItemAddedImpl _value, $Res Function(_$ItemAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? selectedVariantIds = freezed,
  }) {
    return _then(_$ItemAddedImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      selectedVariantIds: freezed == selectedVariantIds
          ? _value._selectedVariantIds
          : selectedVariantIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$ItemAddedImpl implements _ItemAdded {
  const _$ItemAddedImpl(
      {required this.productId,
      required this.quantity,
      final List<int>? selectedVariantIds})
      : _selectedVariantIds = selectedVariantIds;

  @override
  final int productId;
  @override
  final int quantity;
  final List<int>? _selectedVariantIds;
  @override
  List<int>? get selectedVariantIds {
    final value = _selectedVariantIds;
    if (value == null) return null;
    if (_selectedVariantIds is EqualUnmodifiableListView)
      return _selectedVariantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartEvent.itemAdded(productId: $productId, quantity: $quantity, selectedVariantIds: $selectedVariantIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAddedImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._selectedVariantIds, _selectedVariantIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity,
      const DeepCollectionEquality().hash(_selectedVariantIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemAddedImplCopyWith<_$ItemAddedImpl> get copyWith =>
      __$$ItemAddedImplCopyWithImpl<_$ItemAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return itemAdded(productId, quantity, selectedVariantIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return itemAdded?.call(productId, quantity, selectedVariantIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(productId, quantity, selectedVariantIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class _ItemAdded implements CartEvent {
  const factory _ItemAdded(
      {required final int productId,
      required final int quantity,
      final List<int>? selectedVariantIds}) = _$ItemAddedImpl;

  int get productId;
  int get quantity;
  List<int>? get selectedVariantIds;
  @JsonKey(ignore: true)
  _$$ItemAddedImplCopyWith<_$ItemAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemUpdatedImplCopyWith<$Res> {
  factory _$$ItemUpdatedImplCopyWith(
          _$ItemUpdatedImpl value, $Res Function(_$ItemUpdatedImpl) then) =
      __$$ItemUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cartItemId, int quantity, List<int>? selectedVariantIds});
}

/// @nodoc
class __$$ItemUpdatedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ItemUpdatedImpl>
    implements _$$ItemUpdatedImplCopyWith<$Res> {
  __$$ItemUpdatedImplCopyWithImpl(
      _$ItemUpdatedImpl _value, $Res Function(_$ItemUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemId = null,
    Object? quantity = null,
    Object? selectedVariantIds = freezed,
  }) {
    return _then(_$ItemUpdatedImpl(
      cartItemId: null == cartItemId
          ? _value.cartItemId
          : cartItemId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      selectedVariantIds: freezed == selectedVariantIds
          ? _value._selectedVariantIds
          : selectedVariantIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$ItemUpdatedImpl implements _ItemUpdated {
  const _$ItemUpdatedImpl(
      {required this.cartItemId,
      required this.quantity,
      final List<int>? selectedVariantIds})
      : _selectedVariantIds = selectedVariantIds;

  @override
  final int cartItemId;
  @override
  final int quantity;
  final List<int>? _selectedVariantIds;
  @override
  List<int>? get selectedVariantIds {
    final value = _selectedVariantIds;
    if (value == null) return null;
    if (_selectedVariantIds is EqualUnmodifiableListView)
      return _selectedVariantIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartEvent.itemUpdated(cartItemId: $cartItemId, quantity: $quantity, selectedVariantIds: $selectedVariantIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemUpdatedImpl &&
            (identical(other.cartItemId, cartItemId) ||
                other.cartItemId == cartItemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other._selectedVariantIds, _selectedVariantIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItemId, quantity,
      const DeepCollectionEquality().hash(_selectedVariantIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemUpdatedImplCopyWith<_$ItemUpdatedImpl> get copyWith =>
      __$$ItemUpdatedImplCopyWithImpl<_$ItemUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return itemUpdated(cartItemId, quantity, selectedVariantIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return itemUpdated?.call(cartItemId, quantity, selectedVariantIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (itemUpdated != null) {
      return itemUpdated(cartItemId, quantity, selectedVariantIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return itemUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return itemUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (itemUpdated != null) {
      return itemUpdated(this);
    }
    return orElse();
  }
}

abstract class _ItemUpdated implements CartEvent {
  const factory _ItemUpdated(
      {required final int cartItemId,
      required final int quantity,
      final List<int>? selectedVariantIds}) = _$ItemUpdatedImpl;

  int get cartItemId;
  int get quantity;
  List<int>? get selectedVariantIds;
  @JsonKey(ignore: true)
  _$$ItemUpdatedImplCopyWith<_$ItemUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemRemovedImplCopyWith<$Res> {
  factory _$$ItemRemovedImplCopyWith(
          _$ItemRemovedImpl value, $Res Function(_$ItemRemovedImpl) then) =
      __$$ItemRemovedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cartItemId});
}

/// @nodoc
class __$$ItemRemovedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ItemRemovedImpl>
    implements _$$ItemRemovedImplCopyWith<$Res> {
  __$$ItemRemovedImplCopyWithImpl(
      _$ItemRemovedImpl _value, $Res Function(_$ItemRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItemId = null,
  }) {
    return _then(_$ItemRemovedImpl(
      cartItemId: null == cartItemId
          ? _value.cartItemId
          : cartItemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemRemovedImpl implements _ItemRemoved {
  const _$ItemRemovedImpl({required this.cartItemId});

  @override
  final int cartItemId;

  @override
  String toString() {
    return 'CartEvent.itemRemoved(cartItemId: $cartItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRemovedImpl &&
            (identical(other.cartItemId, cartItemId) ||
                other.cartItemId == cartItemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      __$$ItemRemovedImplCopyWithImpl<_$ItemRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return itemRemoved(cartItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return itemRemoved?.call(cartItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(cartItemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return itemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return itemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(this);
    }
    return orElse();
  }
}

abstract class _ItemRemoved implements CartEvent {
  const factory _ItemRemoved({required final int cartItemId}) =
      _$ItemRemovedImpl;

  int get cartItemId;
  @JsonKey(ignore: true)
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CountFetchedImplCopyWith<$Res> {
  factory _$$CountFetchedImplCopyWith(
          _$CountFetchedImpl value, $Res Function(_$CountFetchedImpl) then) =
      __$$CountFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountFetchedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CountFetchedImpl>
    implements _$$CountFetchedImplCopyWith<$Res> {
  __$$CountFetchedImplCopyWithImpl(
      _$CountFetchedImpl _value, $Res Function(_$CountFetchedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountFetchedImpl implements _CountFetched {
  const _$CountFetchedImpl();

  @override
  String toString() {
    return 'CartEvent.countFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return countFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return countFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (countFetched != null) {
      return countFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return countFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return countFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (countFetched != null) {
      return countFetched(this);
    }
    return orElse();
  }
}

abstract class _CountFetched implements CartEvent {
  const factory _CountFetched() = _$CountFetchedImpl;
}

/// @nodoc
abstract class _$$ClearedImplCopyWith<$Res> {
  factory _$$ClearedImplCopyWith(
          _$ClearedImpl value, $Res Function(_$ClearedImpl) then) =
      __$$ClearedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearedImpl>
    implements _$$ClearedImplCopyWith<$Res> {
  __$$ClearedImplCopyWithImpl(
      _$ClearedImpl _value, $Res Function(_$ClearedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearedImpl implements _Cleared {
  const _$ClearedImpl();

  @override
  String toString() {
    return 'CartEvent.cleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() reLoaded,
    required TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)
        itemAdded,
    required TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)
        itemUpdated,
    required TResult Function(int cartItemId) itemRemoved,
    required TResult Function() countFetched,
    required TResult Function() cleared,
  }) {
    return cleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function()? reLoaded,
    TResult? Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult? Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult? Function(int cartItemId)? itemRemoved,
    TResult? Function()? countFetched,
    TResult? Function()? cleared,
  }) {
    return cleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? reLoaded,
    TResult Function(
            int productId, int quantity, List<int>? selectedVariantIds)?
        itemAdded,
    TResult Function(
            int cartItemId, int quantity, List<int>? selectedVariantIds)?
        itemUpdated,
    TResult Function(int cartItemId)? itemRemoved,
    TResult Function()? countFetched,
    TResult Function()? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ReLoaded value) reLoaded,
    required TResult Function(_ItemAdded value) itemAdded,
    required TResult Function(_ItemUpdated value) itemUpdated,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_CountFetched value) countFetched,
    required TResult Function(_Cleared value) cleared,
  }) {
    return cleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ReLoaded value)? reLoaded,
    TResult? Function(_ItemAdded value)? itemAdded,
    TResult? Function(_ItemUpdated value)? itemUpdated,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_CountFetched value)? countFetched,
    TResult? Function(_Cleared value)? cleared,
  }) {
    return cleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ReLoaded value)? reLoaded,
    TResult Function(_ItemAdded value)? itemAdded,
    TResult Function(_ItemUpdated value)? itemUpdated,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_CountFetched value)? countFetched,
    TResult Function(_Cleared value)? cleared,
    required TResult orElse(),
  }) {
    if (cleared != null) {
      return cleared(this);
    }
    return orElse();
  }
}

abstract class _Cleared implements CartEvent {
  const factory _Cleared() = _$ClearedImpl;
}

/// @nodoc
mixin _$CartState {
  CartStatus get status => throw _privateConstructorUsedError;
  CartModel? get cart => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  Map<int, bool> get loadingItems => throw _privateConstructorUsedError;
  bool get isAddingToCart => throw _privateConstructorUsedError;
  bool? get addedToCartSuccess => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartStatus status,
      CartModel? cart,
      int count,
      Map<int, bool> loadingItems,
      bool isAddingToCart,
      bool? addedToCartSuccess,
      ApiErrorModel? error});

  $CartModelCopyWith<$Res>? get cart;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cart = freezed,
    Object? count = null,
    Object? loadingItems = null,
    Object? isAddingToCart = null,
    Object? addedToCartSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      loadingItems: null == loadingItems
          ? _value.loadingItems
          : loadingItems // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      isAddingToCart: null == isAddingToCart
          ? _value.isAddingToCart
          : isAddingToCart // ignore: cast_nullable_to_non_nullable
              as bool,
      addedToCartSuccess: freezed == addedToCartSuccess
          ? _value.addedToCartSuccess
          : addedToCartSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartModelCopyWith<$Res>? get cart {
    if (_value.cart == null) {
      return null;
    }

    return $CartModelCopyWith<$Res>(_value.cart!, (value) {
      return _then(_value.copyWith(cart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartStatus status,
      CartModel? cart,
      int count,
      Map<int, bool> loadingItems,
      bool isAddingToCart,
      bool? addedToCartSuccess,
      ApiErrorModel? error});

  @override
  $CartModelCopyWith<$Res>? get cart;
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? cart = freezed,
    Object? count = null,
    Object? loadingItems = null,
    Object? isAddingToCart = null,
    Object? addedToCartSuccess = freezed,
    Object? error = freezed,
  }) {
    return _then(_$CartStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartModel?,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      loadingItems: null == loadingItems
          ? _value._loadingItems
          : loadingItems // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      isAddingToCart: null == isAddingToCart
          ? _value.isAddingToCart
          : isAddingToCart // ignore: cast_nullable_to_non_nullable
              as bool,
      addedToCartSuccess: freezed == addedToCartSuccess
          ? _value.addedToCartSuccess
          : addedToCartSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl extends _CartState {
  const _$CartStateImpl(
      {this.status = CartStatus.initial,
      this.cart,
      this.count = 0,
      final Map<int, bool> loadingItems = const {},
      this.isAddingToCart = false,
      this.addedToCartSuccess,
      this.error})
      : _loadingItems = loadingItems,
        super._();

  @override
  @JsonKey()
  final CartStatus status;
  @override
  final CartModel? cart;
  @override
  @JsonKey()
  final int count;
  final Map<int, bool> _loadingItems;
  @override
  @JsonKey()
  Map<int, bool> get loadingItems {
    if (_loadingItems is EqualUnmodifiableMapView) return _loadingItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_loadingItems);
  }

  @override
  @JsonKey()
  final bool isAddingToCart;
  @override
  final bool? addedToCartSuccess;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'CartState(status: $status, cart: $cart, count: $count, loadingItems: $loadingItems, isAddingToCart: $isAddingToCart, addedToCartSuccess: $addedToCartSuccess, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._loadingItems, _loadingItems) &&
            (identical(other.isAddingToCart, isAddingToCart) ||
                other.isAddingToCart == isAddingToCart) &&
            (identical(other.addedToCartSuccess, addedToCartSuccess) ||
                other.addedToCartSuccess == addedToCartSuccess) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      cart,
      count,
      const DeepCollectionEquality().hash(_loadingItems),
      isAddingToCart,
      addedToCartSuccess,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState extends CartState {
  const factory _CartState(
      {final CartStatus status,
      final CartModel? cart,
      final int count,
      final Map<int, bool> loadingItems,
      final bool isAddingToCart,
      final bool? addedToCartSuccess,
      final ApiErrorModel? error}) = _$CartStateImpl;
  const _CartState._() : super._();

  @override
  CartStatus get status;
  @override
  CartModel? get cart;
  @override
  int get count;
  @override
  Map<int, bool> get loadingItems;
  @override
  bool get isAddingToCart;
  @override
  bool? get addedToCartSuccess;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
