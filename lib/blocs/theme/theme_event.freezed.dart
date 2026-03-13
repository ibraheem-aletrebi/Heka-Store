// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(AppThemeModeEnum mode) change,
    required TResult Function() toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(AppThemeModeEnum mode)? change,
    TResult? Function()? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(AppThemeModeEnum mode)? change,
    TResult Function()? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadRequested value) load,
    required TResult Function(ThemeChanged value) change,
    required TResult Function(ThemeToggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeLoadRequested value)? load,
    TResult? Function(ThemeChanged value)? change,
    TResult? Function(ThemeToggle value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadRequested value)? load,
    TResult Function(ThemeChanged value)? change,
    TResult Function(ThemeToggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res, ThemeEvent>;
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res, $Val extends ThemeEvent>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeLoadRequestedImplCopyWith<$Res> {
  factory _$$ThemeLoadRequestedImplCopyWith(_$ThemeLoadRequestedImpl value,
          $Res Function(_$ThemeLoadRequestedImpl) then) =
      __$$ThemeLoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeLoadRequestedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeLoadRequestedImpl>
    implements _$$ThemeLoadRequestedImplCopyWith<$Res> {
  __$$ThemeLoadRequestedImplCopyWithImpl(_$ThemeLoadRequestedImpl _value,
      $Res Function(_$ThemeLoadRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeLoadRequestedImpl implements ThemeLoadRequested {
  const _$ThemeLoadRequestedImpl();

  @override
  String toString() {
    return 'ThemeEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeLoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(AppThemeModeEnum mode) change,
    required TResult Function() toggle,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(AppThemeModeEnum mode)? change,
    TResult? Function()? toggle,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(AppThemeModeEnum mode)? change,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadRequested value) load,
    required TResult Function(ThemeChanged value) change,
    required TResult Function(ThemeToggle value) toggle,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeLoadRequested value)? load,
    TResult? Function(ThemeChanged value)? change,
    TResult? Function(ThemeToggle value)? toggle,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadRequested value)? load,
    TResult Function(ThemeChanged value)? change,
    TResult Function(ThemeToggle value)? toggle,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class ThemeLoadRequested implements ThemeEvent {
  const factory ThemeLoadRequested() = _$ThemeLoadRequestedImpl;
}

/// @nodoc
abstract class _$$ThemeChangedImplCopyWith<$Res> {
  factory _$$ThemeChangedImplCopyWith(
          _$ThemeChangedImpl value, $Res Function(_$ThemeChangedImpl) then) =
      __$$ThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppThemeModeEnum mode});
}

/// @nodoc
class __$$ThemeChangedImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeChangedImpl>
    implements _$$ThemeChangedImplCopyWith<$Res> {
  __$$ThemeChangedImplCopyWithImpl(
      _$ThemeChangedImpl _value, $Res Function(_$ThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$ThemeChangedImpl(
      null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as AppThemeModeEnum,
    ));
  }
}

/// @nodoc

class _$ThemeChangedImpl implements ThemeChanged {
  const _$ThemeChangedImpl(this.mode);

  @override
  final AppThemeModeEnum mode;

  @override
  String toString() {
    return 'ThemeEvent.change(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangedImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      __$$ThemeChangedImplCopyWithImpl<_$ThemeChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(AppThemeModeEnum mode) change,
    required TResult Function() toggle,
  }) {
    return change(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(AppThemeModeEnum mode)? change,
    TResult? Function()? toggle,
  }) {
    return change?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(AppThemeModeEnum mode)? change,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadRequested value) load,
    required TResult Function(ThemeChanged value) change,
    required TResult Function(ThemeToggle value) toggle,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeLoadRequested value)? load,
    TResult? Function(ThemeChanged value)? change,
    TResult? Function(ThemeToggle value)? toggle,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadRequested value)? load,
    TResult Function(ThemeChanged value)? change,
    TResult Function(ThemeToggle value)? toggle,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class ThemeChanged implements ThemeEvent {
  const factory ThemeChanged(final AppThemeModeEnum mode) = _$ThemeChangedImpl;

  AppThemeModeEnum get mode;
  @JsonKey(ignore: true)
  _$$ThemeChangedImplCopyWith<_$ThemeChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeToggleImplCopyWith<$Res> {
  factory _$$ThemeToggleImplCopyWith(
          _$ThemeToggleImpl value, $Res Function(_$ThemeToggleImpl) then) =
      __$$ThemeToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeToggleImplCopyWithImpl<$Res>
    extends _$ThemeEventCopyWithImpl<$Res, _$ThemeToggleImpl>
    implements _$$ThemeToggleImplCopyWith<$Res> {
  __$$ThemeToggleImplCopyWithImpl(
      _$ThemeToggleImpl _value, $Res Function(_$ThemeToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeToggleImpl implements ThemeToggle {
  const _$ThemeToggleImpl();

  @override
  String toString() {
    return 'ThemeEvent.toggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(AppThemeModeEnum mode) change,
    required TResult Function() toggle,
  }) {
    return toggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(AppThemeModeEnum mode)? change,
    TResult? Function()? toggle,
  }) {
    return toggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(AppThemeModeEnum mode)? change,
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeLoadRequested value) load,
    required TResult Function(ThemeChanged value) change,
    required TResult Function(ThemeToggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeLoadRequested value)? load,
    TResult? Function(ThemeChanged value)? change,
    TResult? Function(ThemeToggle value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeLoadRequested value)? load,
    TResult Function(ThemeChanged value)? change,
    TResult Function(ThemeToggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class ThemeToggle implements ThemeEvent {
  const factory ThemeToggle() = _$ThemeToggleImpl;
}
