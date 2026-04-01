// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileEvent {
  EditProfileRequest get editProfileRequest =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileRequest editProfileRequest)
        editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileRequest editProfileRequest)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileRequest editProfileRequest)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfile value) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfile value)? editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileEventCopyWith<EditProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res, EditProfileEvent>;
  @useResult
  $Res call({EditProfileRequest editProfileRequest});

  $EditProfileRequestCopyWith<$Res> get editProfileRequest;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res, $Val extends EditProfileEvent>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editProfileRequest = null,
  }) {
    return _then(_value.copyWith(
      editProfileRequest: null == editProfileRequest
          ? _value.editProfileRequest
          : editProfileRequest // ignore: cast_nullable_to_non_nullable
              as EditProfileRequest,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EditProfileRequestCopyWith<$Res> get editProfileRequest {
    return $EditProfileRequestCopyWith<$Res>(_value.editProfileRequest,
        (value) {
      return _then(_value.copyWith(editProfileRequest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditProfileImplCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory _$$EditProfileImplCopyWith(
          _$EditProfileImpl value, $Res Function(_$EditProfileImpl) then) =
      __$$EditProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EditProfileRequest editProfileRequest});

  @override
  $EditProfileRequestCopyWith<$Res> get editProfileRequest;
}

/// @nodoc
class __$$EditProfileImplCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res, _$EditProfileImpl>
    implements _$$EditProfileImplCopyWith<$Res> {
  __$$EditProfileImplCopyWithImpl(
      _$EditProfileImpl _value, $Res Function(_$EditProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editProfileRequest = null,
  }) {
    return _then(_$EditProfileImpl(
      editProfileRequest: null == editProfileRequest
          ? _value.editProfileRequest
          : editProfileRequest // ignore: cast_nullable_to_non_nullable
              as EditProfileRequest,
    ));
  }
}

/// @nodoc

class _$EditProfileImpl implements _EditProfile {
  const _$EditProfileImpl({required this.editProfileRequest});

  @override
  final EditProfileRequest editProfileRequest;

  @override
  String toString() {
    return 'EditProfileEvent.editProfile(editProfileRequest: $editProfileRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileImpl &&
            (identical(other.editProfileRequest, editProfileRequest) ||
                other.editProfileRequest == editProfileRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editProfileRequest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileImplCopyWith<_$EditProfileImpl> get copyWith =>
      __$$EditProfileImplCopyWithImpl<_$EditProfileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileRequest editProfileRequest)
        editProfile,
  }) {
    return editProfile(editProfileRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileRequest editProfileRequest)? editProfile,
  }) {
    return editProfile?.call(editProfileRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileRequest editProfileRequest)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(editProfileRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EditProfile value)? editProfile,
  }) {
    return editProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile implements EditProfileEvent {
  const factory _EditProfile(
          {required final EditProfileRequest editProfileRequest}) =
      _$EditProfileImpl;

  @override
  EditProfileRequest get editProfileRequest;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileImplCopyWith<_$EditProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
