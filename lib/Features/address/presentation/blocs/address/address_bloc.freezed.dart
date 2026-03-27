// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressEventCopyWith<$Res> {
  factory $AddressEventCopyWith(
          AddressEvent value, $Res Function(AddressEvent) then) =
      _$AddressEventCopyWithImpl<$Res, AddressEvent>;
}

/// @nodoc
class _$AddressEventCopyWithImpl<$Res, $Val extends AddressEvent>
    implements $AddressEventCopyWith<$Res> {
  _$AddressEventCopyWithImpl(this._value, this._then);

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
    extends _$AddressEventCopyWithImpl<$Res, _$LoadedImpl>
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
    return 'AddressEvent.loaded()';
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
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
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
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AddressEvent {
  const factory _Loaded() = _$LoadedImpl;
}

/// @nodoc
abstract class _$$AddedImplCopyWith<$Res> {
  factory _$$AddedImplCopyWith(
          _$AddedImpl value, $Res Function(_$AddedImpl) then) =
      __$$AddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressRequestModel request});

  $AddressRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$AddedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$AddedImpl>
    implements _$$AddedImplCopyWith<$Res> {
  __$$AddedImplCopyWithImpl(
      _$AddedImpl _value, $Res Function(_$AddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$AddedImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddressRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressRequestModelCopyWith<$Res> get request {
    return $AddressRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$AddedImpl implements _Added {
  const _$AddedImpl(this.request);

  @override
  final AddressRequestModel request;

  @override
  String toString() {
    return 'AddressEvent.added(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      __$$AddedImplCopyWithImpl<_$AddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) {
    return added(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) {
    return added?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return added(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return added?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (added != null) {
      return added(this);
    }
    return orElse();
  }
}

abstract class _Added implements AddressEvent {
  const factory _Added(final AddressRequestModel request) = _$AddedImpl;

  AddressRequestModel get request;
  @JsonKey(ignore: true)
  _$$AddedImplCopyWith<_$AddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatedImplCopyWith<$Res> {
  factory _$$UpdatedImplCopyWith(
          _$UpdatedImpl value, $Res Function(_$UpdatedImpl) then) =
      __$$UpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, AddressRequestModel request});

  $AddressRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdatedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$UpdatedImpl>
    implements _$$UpdatedImplCopyWith<$Res> {
  __$$UpdatedImplCopyWithImpl(
      _$UpdatedImpl _value, $Res Function(_$UpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? request = null,
  }) {
    return _then(_$UpdatedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as AddressRequestModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressRequestModelCopyWith<$Res> get request {
    return $AddressRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$UpdatedImpl implements _Updated {
  const _$UpdatedImpl(this.id, this.request);

  @override
  final int id;
  @override
  final AddressRequestModel request;

  @override
  String toString() {
    return 'AddressEvent.updated(id: $id, request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      __$$UpdatedImplCopyWithImpl<_$UpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) {
    return updated(id, request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) {
    return updated?.call(id, request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(id, request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements AddressEvent {
  const factory _Updated(final int id, final AddressRequestModel request) =
      _$UpdatedImpl;

  int get id;
  AddressRequestModel get request;
  @JsonKey(ignore: true)
  _$$UpdatedImplCopyWith<_$UpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeletedImplCopyWith<$Res> {
  factory _$$DeletedImplCopyWith(
          _$DeletedImpl value, $Res Function(_$DeletedImpl) then) =
      __$$DeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeletedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$DeletedImpl>
    implements _$$DeletedImplCopyWith<$Res> {
  __$$DeletedImplCopyWithImpl(
      _$DeletedImpl _value, $Res Function(_$DeletedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeletedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeletedImpl implements _Deleted {
  const _$DeletedImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AddressEvent.deleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      __$$DeletedImplCopyWithImpl<_$DeletedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) {
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) {
    return deleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AddressEvent {
  const factory _Deleted(final int id) = _$DeletedImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeletedImplCopyWith<_$DeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetDefaultImplCopyWith<$Res> {
  factory _$$SetDefaultImplCopyWith(
          _$SetDefaultImpl value, $Res Function(_$SetDefaultImpl) then) =
      __$$SetDefaultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SetDefaultImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SetDefaultImpl>
    implements _$$SetDefaultImplCopyWith<$Res> {
  __$$SetDefaultImplCopyWithImpl(
      _$SetDefaultImpl _value, $Res Function(_$SetDefaultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SetDefaultImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetDefaultImpl implements _SetDefault {
  const _$SetDefaultImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AddressEvent.setDefault(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDefaultImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDefaultImplCopyWith<_$SetDefaultImpl> get copyWith =>
      __$$SetDefaultImplCopyWithImpl<_$SetDefaultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) {
    return setDefault(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) {
    return setDefault?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (setDefault != null) {
      return setDefault(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return setDefault(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return setDefault?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (setDefault != null) {
      return setDefault(this);
    }
    return orElse();
  }
}

abstract class _SetDefault implements AddressEvent {
  const factory _SetDefault(final int id) = _$SetDefaultImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$SetDefaultImplCopyWith<_$SetDefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchChangedImplCopyWith<$Res> {
  factory _$$SearchChangedImplCopyWith(
          _$SearchChangedImpl value, $Res Function(_$SearchChangedImpl) then) =
      __$$SearchChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchChangedImplCopyWithImpl<$Res>
    extends _$AddressEventCopyWithImpl<$Res, _$SearchChangedImpl>
    implements _$$SearchChangedImplCopyWith<$Res> {
  __$$SearchChangedImplCopyWithImpl(
      _$SearchChangedImpl _value, $Res Function(_$SearchChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchChangedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchChangedImpl implements _SearchChanged {
  const _$SearchChangedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'AddressEvent.searchChanged(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchChangedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      __$$SearchChangedImplCopyWithImpl<_$SearchChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(AddressRequestModel request) added,
    required TResult Function(int id, AddressRequestModel request) updated,
    required TResult Function(int id) deleted,
    required TResult Function(int id) setDefault,
    required TResult Function(String query) searchChanged,
  }) {
    return searchChanged(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaded,
    TResult? Function(AddressRequestModel request)? added,
    TResult? Function(int id, AddressRequestModel request)? updated,
    TResult? Function(int id)? deleted,
    TResult? Function(int id)? setDefault,
    TResult? Function(String query)? searchChanged,
  }) {
    return searchChanged?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(AddressRequestModel request)? added,
    TResult Function(int id, AddressRequestModel request)? updated,
    TResult Function(int id)? deleted,
    TResult Function(int id)? setDefault,
    TResult Function(String query)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Added value) added,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Deleted value) deleted,
    required TResult Function(_SetDefault value) setDefault,
    required TResult Function(_SearchChanged value) searchChanged,
  }) {
    return searchChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Added value)? added,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Deleted value)? deleted,
    TResult? Function(_SetDefault value)? setDefault,
    TResult? Function(_SearchChanged value)? searchChanged,
  }) {
    return searchChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Added value)? added,
    TResult Function(_Updated value)? updated,
    TResult Function(_Deleted value)? deleted,
    TResult Function(_SetDefault value)? setDefault,
    TResult Function(_SearchChanged value)? searchChanged,
    required TResult orElse(),
  }) {
    if (searchChanged != null) {
      return searchChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchChanged implements AddressEvent {
  const factory _SearchChanged(final String query) = _$SearchChangedImpl;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchChangedImplCopyWith<_$SearchChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  List<AddressModel> get addresses => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isAddLoading => throw _privateConstructorUsedError;
  bool get isUpdateLoading => throw _privateConstructorUsedError;
  bool get isDeleteLoading => throw _privateConstructorUsedError;
  bool get isSetDefaultLoading => throw _privateConstructorUsedError;
  bool get isAddSuccess => throw _privateConstructorUsedError;
  bool get isUpdateSuccess => throw _privateConstructorUsedError;
  bool get isDeleteSuccess => throw _privateConstructorUsedError;
  bool get isSetDefaultSuccess => throw _privateConstructorUsedError;
  ApiErrorModel? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call(
      {List<AddressModel> addresses,
      String searchQuery,
      bool isLoading,
      bool isAddLoading,
      bool isUpdateLoading,
      bool isDeleteLoading,
      bool isSetDefaultLoading,
      bool isAddSuccess,
      bool isUpdateSuccess,
      bool isDeleteSuccess,
      bool isSetDefaultSuccess,
      ApiErrorModel? error});
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
    Object? searchQuery = null,
    Object? isLoading = null,
    Object? isAddLoading = null,
    Object? isUpdateLoading = null,
    Object? isDeleteLoading = null,
    Object? isSetDefaultLoading = null,
    Object? isAddSuccess = null,
    Object? isUpdateSuccess = null,
    Object? isDeleteSuccess = null,
    Object? isSetDefaultSuccess = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddLoading: null == isAddLoading
          ? _value.isAddLoading
          : isAddLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteLoading: null == isDeleteLoading
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetDefaultLoading: null == isSetDefaultLoading
          ? _value.isSetDefaultLoading
          : isSetDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddSuccess: null == isAddSuccess
          ? _value.isAddSuccess
          : isAddSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateSuccess: null == isUpdateSuccess
          ? _value.isUpdateSuccess
          : isUpdateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteSuccess: null == isDeleteSuccess
          ? _value.isDeleteSuccess
          : isDeleteSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetDefaultSuccess: null == isSetDefaultSuccess
          ? _value.isSetDefaultSuccess
          : isSetDefaultSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressStateImplCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$AddressStateImplCopyWith(
          _$AddressStateImpl value, $Res Function(_$AddressStateImpl) then) =
      __$$AddressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AddressModel> addresses,
      String searchQuery,
      bool isLoading,
      bool isAddLoading,
      bool isUpdateLoading,
      bool isDeleteLoading,
      bool isSetDefaultLoading,
      bool isAddSuccess,
      bool isUpdateSuccess,
      bool isDeleteSuccess,
      bool isSetDefaultSuccess,
      ApiErrorModel? error});
}

/// @nodoc
class __$$AddressStateImplCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$AddressStateImpl>
    implements _$$AddressStateImplCopyWith<$Res> {
  __$$AddressStateImplCopyWithImpl(
      _$AddressStateImpl _value, $Res Function(_$AddressStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addresses = null,
    Object? searchQuery = null,
    Object? isLoading = null,
    Object? isAddLoading = null,
    Object? isUpdateLoading = null,
    Object? isDeleteLoading = null,
    Object? isSetDefaultLoading = null,
    Object? isAddSuccess = null,
    Object? isUpdateSuccess = null,
    Object? isDeleteSuccess = null,
    Object? isSetDefaultSuccess = null,
    Object? error = freezed,
  }) {
    return _then(_$AddressStateImpl(
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddLoading: null == isAddLoading
          ? _value.isAddLoading
          : isAddLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateLoading: null == isUpdateLoading
          ? _value.isUpdateLoading
          : isUpdateLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteLoading: null == isDeleteLoading
          ? _value.isDeleteLoading
          : isDeleteLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetDefaultLoading: null == isSetDefaultLoading
          ? _value.isSetDefaultLoading
          : isSetDefaultLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isAddSuccess: null == isAddSuccess
          ? _value.isAddSuccess
          : isAddSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isUpdateSuccess: null == isUpdateSuccess
          ? _value.isUpdateSuccess
          : isUpdateSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleteSuccess: null == isDeleteSuccess
          ? _value.isDeleteSuccess
          : isDeleteSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetDefaultSuccess: null == isSetDefaultSuccess
          ? _value.isSetDefaultSuccess
          : isSetDefaultSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel?,
    ));
  }
}

/// @nodoc

class _$AddressStateImpl extends _AddressState {
  const _$AddressStateImpl(
      {final List<AddressModel> addresses = const [],
      this.searchQuery = '',
      this.isLoading = false,
      this.isAddLoading = false,
      this.isUpdateLoading = false,
      this.isDeleteLoading = false,
      this.isSetDefaultLoading = false,
      this.isAddSuccess = false,
      this.isUpdateSuccess = false,
      this.isDeleteSuccess = false,
      this.isSetDefaultSuccess = false,
      this.error})
      : _addresses = addresses,
        super._();

  final List<AddressModel> _addresses;
  @override
  @JsonKey()
  List<AddressModel> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isAddLoading;
  @override
  @JsonKey()
  final bool isUpdateLoading;
  @override
  @JsonKey()
  final bool isDeleteLoading;
  @override
  @JsonKey()
  final bool isSetDefaultLoading;
  @override
  @JsonKey()
  final bool isAddSuccess;
  @override
  @JsonKey()
  final bool isUpdateSuccess;
  @override
  @JsonKey()
  final bool isDeleteSuccess;
  @override
  @JsonKey()
  final bool isSetDefaultSuccess;
  @override
  final ApiErrorModel? error;

  @override
  String toString() {
    return 'AddressState(addresses: $addresses, searchQuery: $searchQuery, isLoading: $isLoading, isAddLoading: $isAddLoading, isUpdateLoading: $isUpdateLoading, isDeleteLoading: $isDeleteLoading, isSetDefaultLoading: $isSetDefaultLoading, isAddSuccess: $isAddSuccess, isUpdateSuccess: $isUpdateSuccess, isDeleteSuccess: $isDeleteSuccess, isSetDefaultSuccess: $isSetDefaultSuccess, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressStateImpl &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isAddLoading, isAddLoading) ||
                other.isAddLoading == isAddLoading) &&
            (identical(other.isUpdateLoading, isUpdateLoading) ||
                other.isUpdateLoading == isUpdateLoading) &&
            (identical(other.isDeleteLoading, isDeleteLoading) ||
                other.isDeleteLoading == isDeleteLoading) &&
            (identical(other.isSetDefaultLoading, isSetDefaultLoading) ||
                other.isSetDefaultLoading == isSetDefaultLoading) &&
            (identical(other.isAddSuccess, isAddSuccess) ||
                other.isAddSuccess == isAddSuccess) &&
            (identical(other.isUpdateSuccess, isUpdateSuccess) ||
                other.isUpdateSuccess == isUpdateSuccess) &&
            (identical(other.isDeleteSuccess, isDeleteSuccess) ||
                other.isDeleteSuccess == isDeleteSuccess) &&
            (identical(other.isSetDefaultSuccess, isSetDefaultSuccess) ||
                other.isSetDefaultSuccess == isSetDefaultSuccess) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addresses),
      searchQuery,
      isLoading,
      isAddLoading,
      isUpdateLoading,
      isDeleteLoading,
      isSetDefaultLoading,
      isAddSuccess,
      isUpdateSuccess,
      isDeleteSuccess,
      isSetDefaultSuccess,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      __$$AddressStateImplCopyWithImpl<_$AddressStateImpl>(this, _$identity);
}

abstract class _AddressState extends AddressState {
  const factory _AddressState(
      {final List<AddressModel> addresses,
      final String searchQuery,
      final bool isLoading,
      final bool isAddLoading,
      final bool isUpdateLoading,
      final bool isDeleteLoading,
      final bool isSetDefaultLoading,
      final bool isAddSuccess,
      final bool isUpdateSuccess,
      final bool isDeleteSuccess,
      final bool isSetDefaultSuccess,
      final ApiErrorModel? error}) = _$AddressStateImpl;
  const _AddressState._() : super._();

  @override
  List<AddressModel> get addresses;
  @override
  String get searchQuery;
  @override
  bool get isLoading;
  @override
  bool get isAddLoading;
  @override
  bool get isUpdateLoading;
  @override
  bool get isDeleteLoading;
  @override
  bool get isSetDefaultLoading;
  @override
  bool get isAddSuccess;
  @override
  bool get isUpdateSuccess;
  @override
  bool get isDeleteSuccess;
  @override
  bool get isSetDefaultSuccess;
  @override
  ApiErrorModel? get error;
  @override
  @JsonKey(ignore: true)
  _$$AddressStateImplCopyWith<_$AddressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
