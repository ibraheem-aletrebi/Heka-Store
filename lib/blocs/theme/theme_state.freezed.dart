// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppThemeModeEnum appThemeMode) loaded,
    required TResult Function(String message, AppThemeModeEnum fallback)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult? Function(String message, AppThemeModeEnum fallback)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult Function(String message, AppThemeModeEnum fallback)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
    required TResult Function(ThemeFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
    TResult? Function(ThemeFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    TResult Function(ThemeFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res, ThemeState>;
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res, $Val extends ThemeState>
    implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeInitialImplCopyWith<$Res> {
  factory _$$ThemeInitialImplCopyWith(
          _$ThemeInitialImpl value, $Res Function(_$ThemeInitialImpl) then) =
      __$$ThemeInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeInitialImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeInitialImpl>
    implements _$$ThemeInitialImplCopyWith<$Res> {
  __$$ThemeInitialImplCopyWithImpl(
      _$ThemeInitialImpl _value, $Res Function(_$ThemeInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeInitialImpl extends ThemeInitial {
  const _$ThemeInitialImpl() : super._();

  @override
  String toString() {
    return 'ThemeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppThemeModeEnum appThemeMode) loaded,
    required TResult Function(String message, AppThemeModeEnum fallback)
        failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult? Function(String message, AppThemeModeEnum fallback)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult Function(String message, AppThemeModeEnum fallback)? failure,
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
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
    required TResult Function(ThemeFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
    TResult? Function(ThemeFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    TResult Function(ThemeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ThemeInitial extends ThemeState {
  const factory ThemeInitial() = _$ThemeInitialImpl;
  const ThemeInitial._() : super._();
}

/// @nodoc
abstract class _$$ThemeLoadingImplCopyWith<$Res> {
  factory _$$ThemeLoadingImplCopyWith(
          _$ThemeLoadingImpl value, $Res Function(_$ThemeLoadingImpl) then) =
      __$$ThemeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThemeLoadingImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeLoadingImpl>
    implements _$$ThemeLoadingImplCopyWith<$Res> {
  __$$ThemeLoadingImplCopyWithImpl(
      _$ThemeLoadingImpl _value, $Res Function(_$ThemeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThemeLoadingImpl extends ThemeLoading {
  const _$ThemeLoadingImpl() : super._();

  @override
  String toString() {
    return 'ThemeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThemeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppThemeModeEnum appThemeMode) loaded,
    required TResult Function(String message, AppThemeModeEnum fallback)
        failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult? Function(String message, AppThemeModeEnum fallback)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult Function(String message, AppThemeModeEnum fallback)? failure,
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
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
    required TResult Function(ThemeFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
    TResult? Function(ThemeFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    TResult Function(ThemeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ThemeLoading extends ThemeState {
  const factory ThemeLoading() = _$ThemeLoadingImpl;
  const ThemeLoading._() : super._();
}

/// @nodoc
abstract class _$$ThemeLoadedImplCopyWith<$Res> {
  factory _$$ThemeLoadedImplCopyWith(
          _$ThemeLoadedImpl value, $Res Function(_$ThemeLoadedImpl) then) =
      __$$ThemeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppThemeModeEnum appThemeMode});
}

/// @nodoc
class __$$ThemeLoadedImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeLoadedImpl>
    implements _$$ThemeLoadedImplCopyWith<$Res> {
  __$$ThemeLoadedImplCopyWithImpl(
      _$ThemeLoadedImpl _value, $Res Function(_$ThemeLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appThemeMode = null,
  }) {
    return _then(_$ThemeLoadedImpl(
      appThemeMode: null == appThemeMode
          ? _value.appThemeMode
          : appThemeMode // ignore: cast_nullable_to_non_nullable
              as AppThemeModeEnum,
    ));
  }
}

/// @nodoc

class _$ThemeLoadedImpl extends ThemeLoaded {
  const _$ThemeLoadedImpl({required this.appThemeMode}) : super._();

  @override
  final AppThemeModeEnum appThemeMode;

  @override
  String toString() {
    return 'ThemeState.loaded(appThemeMode: $appThemeMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeLoadedImpl &&
            (identical(other.appThemeMode, appThemeMode) ||
                other.appThemeMode == appThemeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appThemeMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeLoadedImplCopyWith<_$ThemeLoadedImpl> get copyWith =>
      __$$ThemeLoadedImplCopyWithImpl<_$ThemeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppThemeModeEnum appThemeMode) loaded,
    required TResult Function(String message, AppThemeModeEnum fallback)
        failure,
  }) {
    return loaded(appThemeMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult? Function(String message, AppThemeModeEnum fallback)? failure,
  }) {
    return loaded?.call(appThemeMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult Function(String message, AppThemeModeEnum fallback)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(appThemeMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
    required TResult Function(ThemeFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
    TResult? Function(ThemeFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    TResult Function(ThemeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ThemeLoaded extends ThemeState {
  const factory ThemeLoaded({required final AppThemeModeEnum appThemeMode}) =
      _$ThemeLoadedImpl;
  const ThemeLoaded._() : super._();

  AppThemeModeEnum get appThemeMode;
  @JsonKey(ignore: true)
  _$$ThemeLoadedImplCopyWith<_$ThemeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeFailureImplCopyWith<$Res> {
  factory _$$ThemeFailureImplCopyWith(
          _$ThemeFailureImpl value, $Res Function(_$ThemeFailureImpl) then) =
      __$$ThemeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, AppThemeModeEnum fallback});
}

/// @nodoc
class __$$ThemeFailureImplCopyWithImpl<$Res>
    extends _$ThemeStateCopyWithImpl<$Res, _$ThemeFailureImpl>
    implements _$$ThemeFailureImplCopyWith<$Res> {
  __$$ThemeFailureImplCopyWithImpl(
      _$ThemeFailureImpl _value, $Res Function(_$ThemeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fallback = null,
  }) {
    return _then(_$ThemeFailureImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      fallback: null == fallback
          ? _value.fallback
          : fallback // ignore: cast_nullable_to_non_nullable
              as AppThemeModeEnum,
    ));
  }
}

/// @nodoc

class _$ThemeFailureImpl extends ThemeFailure {
  const _$ThemeFailureImpl(
      {required this.message, this.fallback = AppThemeModeEnum.system})
      : super._();

  @override
  final String message;
  @override
  @JsonKey()
  final AppThemeModeEnum fallback;

  @override
  String toString() {
    return 'ThemeState.failure(message: $message, fallback: $fallback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeFailureImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fallback, fallback) ||
                other.fallback == fallback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, fallback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeFailureImplCopyWith<_$ThemeFailureImpl> get copyWith =>
      __$$ThemeFailureImplCopyWithImpl<_$ThemeFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AppThemeModeEnum appThemeMode) loaded,
    required TResult Function(String message, AppThemeModeEnum fallback)
        failure,
  }) {
    return failure(message, fallback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult? Function(String message, AppThemeModeEnum fallback)? failure,
  }) {
    return failure?.call(message, fallback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AppThemeModeEnum appThemeMode)? loaded,
    TResult Function(String message, AppThemeModeEnum fallback)? failure,
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
    required TResult Function(ThemeInitial value) initial,
    required TResult Function(ThemeLoading value) loading,
    required TResult Function(ThemeLoaded value) loaded,
    required TResult Function(ThemeFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ThemeInitial value)? initial,
    TResult? Function(ThemeLoading value)? loading,
    TResult? Function(ThemeLoaded value)? loaded,
    TResult? Function(ThemeFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ThemeInitial value)? initial,
    TResult Function(ThemeLoading value)? loading,
    TResult Function(ThemeLoaded value)? loaded,
    TResult Function(ThemeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ThemeFailure extends ThemeState {
  const factory ThemeFailure(
      {required final String message,
      final AppThemeModeEnum fallback}) = _$ThemeFailureImpl;
  const ThemeFailure._() : super._();

  String get message;
  AppThemeModeEnum get fallback;
  @JsonKey(ignore: true)
  _$$ThemeFailureImplCopyWith<_$ThemeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
