// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_layout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainLayoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(int count) updateCartCount,
    required TResult Function() incrementCart,
    required TResult Function() decrementCart,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(int count)? updateCartCount,
    TResult? Function()? incrementCart,
    TResult? Function()? decrementCart,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(int count)? updateCartCount,
    TResult Function()? incrementCart,
    TResult Function()? decrementCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(UpdateCartCount value) updateCartCount,
    required TResult Function(IncrementCart value) incrementCart,
    required TResult Function(DecrementCart value) decrementCart,
    required TResult Function(ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(UpdateCartCount value)? updateCartCount,
    TResult? Function(IncrementCart value)? incrementCart,
    TResult? Function(DecrementCart value)? decrementCart,
    TResult? Function(ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(UpdateCartCount value)? updateCartCount,
    TResult Function(IncrementCart value)? incrementCart,
    TResult Function(DecrementCart value)? decrementCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainLayoutEventCopyWith<$Res> {
  factory $MainLayoutEventCopyWith(
          MainLayoutEvent value, $Res Function(MainLayoutEvent) then) =
      _$MainLayoutEventCopyWithImpl<$Res, MainLayoutEvent>;
}

/// @nodoc
class _$MainLayoutEventCopyWithImpl<$Res, $Val extends MainLayoutEvent>
    implements $MainLayoutEventCopyWith<$Res> {
  _$MainLayoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$MainLayoutEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangePageImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements ChangePage {
  const _$ChangePageImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MainLayoutEvent.changePage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(int count) updateCartCount,
    required TResult Function() incrementCart,
    required TResult Function() decrementCart,
    required TResult Function() clearCart,
  }) {
    return changePage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(int count)? updateCartCount,
    TResult? Function()? incrementCart,
    TResult? Function()? decrementCart,
    TResult? Function()? clearCart,
  }) {
    return changePage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(int count)? updateCartCount,
    TResult Function()? incrementCart,
    TResult Function()? decrementCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(UpdateCartCount value) updateCartCount,
    required TResult Function(IncrementCart value) incrementCart,
    required TResult Function(DecrementCart value) decrementCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(UpdateCartCount value)? updateCartCount,
    TResult? Function(IncrementCart value)? incrementCart,
    TResult? Function(DecrementCart value)? decrementCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(UpdateCartCount value)? updateCartCount,
    TResult Function(IncrementCart value)? incrementCart,
    TResult Function(DecrementCart value)? decrementCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class ChangePage implements MainLayoutEvent {
  const factory ChangePage(final int index) = _$ChangePageImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartCountImplCopyWith<$Res> {
  factory _$$UpdateCartCountImplCopyWith(_$UpdateCartCountImpl value,
          $Res Function(_$UpdateCartCountImpl) then) =
      __$$UpdateCartCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$UpdateCartCountImplCopyWithImpl<$Res>
    extends _$MainLayoutEventCopyWithImpl<$Res, _$UpdateCartCountImpl>
    implements _$$UpdateCartCountImplCopyWith<$Res> {
  __$$UpdateCartCountImplCopyWithImpl(
      _$UpdateCartCountImpl _value, $Res Function(_$UpdateCartCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$UpdateCartCountImpl(
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateCartCountImpl implements UpdateCartCount {
  const _$UpdateCartCountImpl(this.count);

  @override
  final int count;

  @override
  String toString() {
    return 'MainLayoutEvent.updateCartCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartCountImplCopyWith<_$UpdateCartCountImpl> get copyWith =>
      __$$UpdateCartCountImplCopyWithImpl<_$UpdateCartCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(int count) updateCartCount,
    required TResult Function() incrementCart,
    required TResult Function() decrementCart,
    required TResult Function() clearCart,
  }) {
    return updateCartCount(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(int count)? updateCartCount,
    TResult? Function()? incrementCart,
    TResult? Function()? decrementCart,
    TResult? Function()? clearCart,
  }) {
    return updateCartCount?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(int count)? updateCartCount,
    TResult Function()? incrementCart,
    TResult Function()? decrementCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (updateCartCount != null) {
      return updateCartCount(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(UpdateCartCount value) updateCartCount,
    required TResult Function(IncrementCart value) incrementCart,
    required TResult Function(DecrementCart value) decrementCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return updateCartCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(UpdateCartCount value)? updateCartCount,
    TResult? Function(IncrementCart value)? incrementCart,
    TResult? Function(DecrementCart value)? decrementCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return updateCartCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(UpdateCartCount value)? updateCartCount,
    TResult Function(IncrementCart value)? incrementCart,
    TResult Function(DecrementCart value)? decrementCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (updateCartCount != null) {
      return updateCartCount(this);
    }
    return orElse();
  }
}

abstract class UpdateCartCount implements MainLayoutEvent {
  const factory UpdateCartCount(final int count) = _$UpdateCartCountImpl;

  int get count;
  @JsonKey(ignore: true)
  _$$UpdateCartCountImplCopyWith<_$UpdateCartCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementCartImplCopyWith<$Res> {
  factory _$$IncrementCartImplCopyWith(
          _$IncrementCartImpl value, $Res Function(_$IncrementCartImpl) then) =
      __$$IncrementCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IncrementCartImplCopyWithImpl<$Res>
    extends _$MainLayoutEventCopyWithImpl<$Res, _$IncrementCartImpl>
    implements _$$IncrementCartImplCopyWith<$Res> {
  __$$IncrementCartImplCopyWithImpl(
      _$IncrementCartImpl _value, $Res Function(_$IncrementCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IncrementCartImpl implements IncrementCart {
  const _$IncrementCartImpl();

  @override
  String toString() {
    return 'MainLayoutEvent.incrementCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IncrementCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(int count) updateCartCount,
    required TResult Function() incrementCart,
    required TResult Function() decrementCart,
    required TResult Function() clearCart,
  }) {
    return incrementCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(int count)? updateCartCount,
    TResult? Function()? incrementCart,
    TResult? Function()? decrementCart,
    TResult? Function()? clearCart,
  }) {
    return incrementCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(int count)? updateCartCount,
    TResult Function()? incrementCart,
    TResult Function()? decrementCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (incrementCart != null) {
      return incrementCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(UpdateCartCount value) updateCartCount,
    required TResult Function(IncrementCart value) incrementCart,
    required TResult Function(DecrementCart value) decrementCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return incrementCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(UpdateCartCount value)? updateCartCount,
    TResult? Function(IncrementCart value)? incrementCart,
    TResult? Function(DecrementCart value)? decrementCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return incrementCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(UpdateCartCount value)? updateCartCount,
    TResult Function(IncrementCart value)? incrementCart,
    TResult Function(DecrementCart value)? decrementCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (incrementCart != null) {
      return incrementCart(this);
    }
    return orElse();
  }
}

abstract class IncrementCart implements MainLayoutEvent {
  const factory IncrementCart() = _$IncrementCartImpl;
}

/// @nodoc
abstract class _$$DecrementCartImplCopyWith<$Res> {
  factory _$$DecrementCartImplCopyWith(
          _$DecrementCartImpl value, $Res Function(_$DecrementCartImpl) then) =
      __$$DecrementCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DecrementCartImplCopyWithImpl<$Res>
    extends _$MainLayoutEventCopyWithImpl<$Res, _$DecrementCartImpl>
    implements _$$DecrementCartImplCopyWith<$Res> {
  __$$DecrementCartImplCopyWithImpl(
      _$DecrementCartImpl _value, $Res Function(_$DecrementCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DecrementCartImpl implements DecrementCart {
  const _$DecrementCartImpl();

  @override
  String toString() {
    return 'MainLayoutEvent.decrementCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DecrementCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(int count) updateCartCount,
    required TResult Function() incrementCart,
    required TResult Function() decrementCart,
    required TResult Function() clearCart,
  }) {
    return decrementCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(int count)? updateCartCount,
    TResult? Function()? incrementCart,
    TResult? Function()? decrementCart,
    TResult? Function()? clearCart,
  }) {
    return decrementCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(int count)? updateCartCount,
    TResult Function()? incrementCart,
    TResult Function()? decrementCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (decrementCart != null) {
      return decrementCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(UpdateCartCount value) updateCartCount,
    required TResult Function(IncrementCart value) incrementCart,
    required TResult Function(DecrementCart value) decrementCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return decrementCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(UpdateCartCount value)? updateCartCount,
    TResult? Function(IncrementCart value)? incrementCart,
    TResult? Function(DecrementCart value)? decrementCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return decrementCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(UpdateCartCount value)? updateCartCount,
    TResult Function(IncrementCart value)? incrementCart,
    TResult Function(DecrementCart value)? decrementCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (decrementCart != null) {
      return decrementCart(this);
    }
    return orElse();
  }
}

abstract class DecrementCart implements MainLayoutEvent {
  const factory DecrementCart() = _$DecrementCartImpl;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$MainLayoutEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
      _$ClearCartImpl _value, $Res Function(_$ClearCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCartImpl implements ClearCart {
  const _$ClearCartImpl();

  @override
  String toString() {
    return 'MainLayoutEvent.clearCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changePage,
    required TResult Function(int count) updateCartCount,
    required TResult Function() incrementCart,
    required TResult Function() decrementCart,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changePage,
    TResult? Function(int count)? updateCartCount,
    TResult? Function()? incrementCart,
    TResult? Function()? decrementCart,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changePage,
    TResult Function(int count)? updateCartCount,
    TResult Function()? incrementCart,
    TResult Function()? decrementCart,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangePage value) changePage,
    required TResult Function(UpdateCartCount value) updateCartCount,
    required TResult Function(IncrementCart value) incrementCart,
    required TResult Function(DecrementCart value) decrementCart,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(UpdateCartCount value)? updateCartCount,
    TResult? Function(IncrementCart value)? incrementCart,
    TResult? Function(DecrementCart value)? decrementCart,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangePage value)? changePage,
    TResult Function(UpdateCartCount value)? updateCartCount,
    TResult Function(IncrementCart value)? incrementCart,
    TResult Function(DecrementCart value)? decrementCart,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements MainLayoutEvent {
  const factory ClearCart() = _$ClearCartImpl;
}

/// @nodoc
mixin _$MainLayoutState {
  int get currentIndex => throw _privateConstructorUsedError;
  int get cartCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainLayoutStateCopyWith<MainLayoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainLayoutStateCopyWith<$Res> {
  factory $MainLayoutStateCopyWith(
          MainLayoutState value, $Res Function(MainLayoutState) then) =
      _$MainLayoutStateCopyWithImpl<$Res, MainLayoutState>;
  @useResult
  $Res call({int currentIndex, int cartCount});
}

/// @nodoc
class _$MainLayoutStateCopyWithImpl<$Res, $Val extends MainLayoutState>
    implements $MainLayoutStateCopyWith<$Res> {
  _$MainLayoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? cartCount = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainLayoutStateImplCopyWith<$Res>
    implements $MainLayoutStateCopyWith<$Res> {
  factory _$$MainLayoutStateImplCopyWith(_$MainLayoutStateImpl value,
          $Res Function(_$MainLayoutStateImpl) then) =
      __$$MainLayoutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex, int cartCount});
}

/// @nodoc
class __$$MainLayoutStateImplCopyWithImpl<$Res>
    extends _$MainLayoutStateCopyWithImpl<$Res, _$MainLayoutStateImpl>
    implements _$$MainLayoutStateImplCopyWith<$Res> {
  __$$MainLayoutStateImplCopyWithImpl(
      _$MainLayoutStateImpl _value, $Res Function(_$MainLayoutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? cartCount = null,
  }) {
    return _then(_$MainLayoutStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainLayoutStateImpl implements _MainLayoutState {
  const _$MainLayoutStateImpl({this.currentIndex = 0, this.cartCount = 0});

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final int cartCount;

  @override
  String toString() {
    return 'MainLayoutState(currentIndex: $currentIndex, cartCount: $cartCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainLayoutStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, cartCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainLayoutStateImplCopyWith<_$MainLayoutStateImpl> get copyWith =>
      __$$MainLayoutStateImplCopyWithImpl<_$MainLayoutStateImpl>(
          this, _$identity);
}

abstract class _MainLayoutState implements MainLayoutState {
  const factory _MainLayoutState(
      {final int currentIndex, final int cartCount}) = _$MainLayoutStateImpl;

  @override
  int get currentIndex;
  @override
  int get cartCount;
  @override
  @JsonKey(ignore: true)
  _$$MainLayoutStateImplCopyWith<_$MainLayoutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
