// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String langCode) change,
    required TResult Function() toggleArabicEnglish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String langCode)? change,
    TResult? Function()? toggleArabicEnglish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String langCode)? change,
    TResult Function()? toggleArabicEnglish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageLoadRequested value) load,
    required TResult Function(LanguageChanged value) change,
    required TResult Function(LanguageToggleArabicEnglish value)
        toggleArabicEnglish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageLoadRequested value)? load,
    TResult? Function(LanguageChanged value)? change,
    TResult? Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadRequested value)? load,
    TResult Function(LanguageChanged value)? change,
    TResult Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageEventCopyWith<$Res> {
  factory $LanguageEventCopyWith(
          LanguageEvent value, $Res Function(LanguageEvent) then) =
      _$LanguageEventCopyWithImpl<$Res, LanguageEvent>;
}

/// @nodoc
class _$LanguageEventCopyWithImpl<$Res, $Val extends LanguageEvent>
    implements $LanguageEventCopyWith<$Res> {
  _$LanguageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LanguageLoadRequestedImplCopyWith<$Res> {
  factory _$$LanguageLoadRequestedImplCopyWith(
          _$LanguageLoadRequestedImpl value,
          $Res Function(_$LanguageLoadRequestedImpl) then) =
      __$$LanguageLoadRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageLoadRequestedImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LanguageLoadRequestedImpl>
    implements _$$LanguageLoadRequestedImplCopyWith<$Res> {
  __$$LanguageLoadRequestedImplCopyWithImpl(_$LanguageLoadRequestedImpl _value,
      $Res Function(_$LanguageLoadRequestedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageLoadRequestedImpl implements LanguageLoadRequested {
  const _$LanguageLoadRequestedImpl();

  @override
  String toString() {
    return 'LanguageEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageLoadRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String langCode) change,
    required TResult Function() toggleArabicEnglish,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String langCode)? change,
    TResult? Function()? toggleArabicEnglish,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String langCode)? change,
    TResult Function()? toggleArabicEnglish,
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
    required TResult Function(LanguageLoadRequested value) load,
    required TResult Function(LanguageChanged value) change,
    required TResult Function(LanguageToggleArabicEnglish value)
        toggleArabicEnglish,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageLoadRequested value)? load,
    TResult? Function(LanguageChanged value)? change,
    TResult? Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadRequested value)? load,
    TResult Function(LanguageChanged value)? change,
    TResult Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class LanguageLoadRequested implements LanguageEvent {
  const factory LanguageLoadRequested() = _$LanguageLoadRequestedImpl;
}

/// @nodoc
abstract class _$$LanguageChangedImplCopyWith<$Res> {
  factory _$$LanguageChangedImplCopyWith(_$LanguageChangedImpl value,
          $Res Function(_$LanguageChangedImpl) then) =
      __$$LanguageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$LanguageChangedImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LanguageChangedImpl>
    implements _$$LanguageChangedImplCopyWith<$Res> {
  __$$LanguageChangedImplCopyWithImpl(
      _$LanguageChangedImpl _value, $Res Function(_$LanguageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$LanguageChangedImpl(
      langCode: null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LanguageChangedImpl implements LanguageChanged {
  const _$LanguageChangedImpl({required this.langCode});

  @override
  final String langCode;

  @override
  String toString() {
    return 'LanguageEvent.change(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageChangedImpl &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      __$$LanguageChangedImplCopyWithImpl<_$LanguageChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String langCode) change,
    required TResult Function() toggleArabicEnglish,
  }) {
    return change(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String langCode)? change,
    TResult? Function()? toggleArabicEnglish,
  }) {
    return change?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String langCode)? change,
    TResult Function()? toggleArabicEnglish,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageLoadRequested value) load,
    required TResult Function(LanguageChanged value) change,
    required TResult Function(LanguageToggleArabicEnglish value)
        toggleArabicEnglish,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageLoadRequested value)? load,
    TResult? Function(LanguageChanged value)? change,
    TResult? Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadRequested value)? load,
    TResult Function(LanguageChanged value)? change,
    TResult Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class LanguageChanged implements LanguageEvent {
  const factory LanguageChanged({required final String langCode}) =
      _$LanguageChangedImpl;

  String get langCode;
  @JsonKey(ignore: true)
  _$$LanguageChangedImplCopyWith<_$LanguageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LanguageToggleArabicEnglishImplCopyWith<$Res> {
  factory _$$LanguageToggleArabicEnglishImplCopyWith(
          _$LanguageToggleArabicEnglishImpl value,
          $Res Function(_$LanguageToggleArabicEnglishImpl) then) =
      __$$LanguageToggleArabicEnglishImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LanguageToggleArabicEnglishImplCopyWithImpl<$Res>
    extends _$LanguageEventCopyWithImpl<$Res, _$LanguageToggleArabicEnglishImpl>
    implements _$$LanguageToggleArabicEnglishImplCopyWith<$Res> {
  __$$LanguageToggleArabicEnglishImplCopyWithImpl(
      _$LanguageToggleArabicEnglishImpl _value,
      $Res Function(_$LanguageToggleArabicEnglishImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LanguageToggleArabicEnglishImpl implements LanguageToggleArabicEnglish {
  const _$LanguageToggleArabicEnglishImpl();

  @override
  String toString() {
    return 'LanguageEvent.toggleArabicEnglish()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageToggleArabicEnglishImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String langCode) change,
    required TResult Function() toggleArabicEnglish,
  }) {
    return toggleArabicEnglish();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String langCode)? change,
    TResult? Function()? toggleArabicEnglish,
  }) {
    return toggleArabicEnglish?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String langCode)? change,
    TResult Function()? toggleArabicEnglish,
    required TResult orElse(),
  }) {
    if (toggleArabicEnglish != null) {
      return toggleArabicEnglish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LanguageLoadRequested value) load,
    required TResult Function(LanguageChanged value) change,
    required TResult Function(LanguageToggleArabicEnglish value)
        toggleArabicEnglish,
  }) {
    return toggleArabicEnglish(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LanguageLoadRequested value)? load,
    TResult? Function(LanguageChanged value)? change,
    TResult? Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
  }) {
    return toggleArabicEnglish?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LanguageLoadRequested value)? load,
    TResult Function(LanguageChanged value)? change,
    TResult Function(LanguageToggleArabicEnglish value)? toggleArabicEnglish,
    required TResult orElse(),
  }) {
    if (toggleArabicEnglish != null) {
      return toggleArabicEnglish(this);
    }
    return orElse();
  }
}

abstract class LanguageToggleArabicEnglish implements LanguageEvent {
  const factory LanguageToggleArabicEnglish() =
      _$LanguageToggleArabicEnglishImpl;
}

/// @nodoc
mixin _$LanguageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String langCode) loaded,
    required TResult Function(String message, String fallback) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String langCode)? loaded,
    TResult? Function(String message, String fallback)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String langCode)? loaded,
    TResult Function(String message, String fallback)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'LanguageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String langCode) loaded,
    required TResult Function(String message, String fallback) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String langCode)? loaded,
    TResult? Function(String message, String fallback)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String langCode)? loaded,
    TResult Function(String message, String fallback)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends LanguageState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'LanguageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String langCode) loaded,
    required TResult Function(String message, String fallback) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String langCode)? loaded,
    TResult? Function(String message, String fallback)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String langCode)? loaded,
    TResult Function(String message, String fallback)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends LanguageState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$LoadedImpl(
      langCode: null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl({required this.langCode}) : super._();

  @override
  final String langCode;

  @override
  String toString() {
    return 'LanguageState.loaded(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String langCode) loaded,
    required TResult Function(String message, String fallback) failure,
  }) {
    return loaded(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String langCode)? loaded,
    TResult? Function(String message, String fallback)? failure,
  }) {
    return loaded?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String langCode)? loaded,
    TResult Function(String message, String fallback)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends LanguageState {
  const factory _Loaded({required final String langCode}) = _$LoadedImpl;
  const _Loaded._() : super._();

  String get langCode;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String fallback});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fallback = null,
  }) {
    return _then(_$FailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fallback: null == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl extends _Failure {
  const _$FailureImpl({required this.message, this.fallback = 'ar'})
      : super._();

  @override
  final String message;
  @override
  @JsonKey()
  final String fallback;

  @override
  String toString() {
    return 'LanguageState.failure(message: $message, fallback: $fallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, fallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String langCode) loaded,
    required TResult Function(String message, String fallback) failure,
  }) {
    return failure(message, fallback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String langCode)? loaded,
    TResult? Function(String message, String fallback)? failure,
  }) {
    return failure?.call(message, fallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String langCode)? loaded,
    TResult Function(String message, String fallback)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message, fallback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends LanguageState {
  const factory _Failure(
      {required final String message, final String fallback}) = _$FailureImpl;
  const _Failure._() : super._();

  String get message;
  String get fallback;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
