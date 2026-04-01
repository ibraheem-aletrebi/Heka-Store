// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileImageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) uploadProfilePicture,
    required TResult Function() deleteProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? uploadProfilePicture,
    TResult? Function()? deleteProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? uploadProfilePicture,
    TResult Function()? deleteProfilePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_DeleteProfilePicture value) deleteProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_DeleteProfilePicture value)? deleteProfilePicture,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_DeleteProfilePicture value)? deleteProfilePicture,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageEventCopyWith<$Res> {
  factory $ProfileImageEventCopyWith(
          ProfileImageEvent value, $Res Function(ProfileImageEvent) then) =
      _$ProfileImageEventCopyWithImpl<$Res, ProfileImageEvent>;
}

/// @nodoc
class _$ProfileImageEventCopyWithImpl<$Res, $Val extends ProfileImageEvent>
    implements $ProfileImageEventCopyWith<$Res> {
  _$ProfileImageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UploadProfilePictureImplCopyWith<$Res> {
  factory _$$UploadProfilePictureImplCopyWith(_$UploadProfilePictureImpl value,
          $Res Function(_$UploadProfilePictureImpl) then) =
      __$$UploadProfilePictureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$UploadProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfileImageEventCopyWithImpl<$Res, _$UploadProfilePictureImpl>
    implements _$$UploadProfilePictureImplCopyWith<$Res> {
  __$$UploadProfilePictureImplCopyWithImpl(_$UploadProfilePictureImpl _value,
      $Res Function(_$UploadProfilePictureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$UploadProfilePictureImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UploadProfilePictureImpl implements _UploadProfilePicture {
  const _$UploadProfilePictureImpl({required this.imagePath});

  @override
  final String imagePath;

  @override
  String toString() {
    return 'ProfileImageEvent.uploadProfilePicture(imagePath: $imagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadProfilePictureImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadProfilePictureImplCopyWith<_$UploadProfilePictureImpl>
      get copyWith =>
          __$$UploadProfilePictureImplCopyWithImpl<_$UploadProfilePictureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) uploadProfilePicture,
    required TResult Function() deleteProfilePicture,
  }) {
    return uploadProfilePicture(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? uploadProfilePicture,
    TResult? Function()? deleteProfilePicture,
  }) {
    return uploadProfilePicture?.call(imagePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? uploadProfilePicture,
    TResult Function()? deleteProfilePicture,
    required TResult orElse(),
  }) {
    if (uploadProfilePicture != null) {
      return uploadProfilePicture(imagePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_DeleteProfilePicture value) deleteProfilePicture,
  }) {
    return uploadProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_DeleteProfilePicture value)? deleteProfilePicture,
  }) {
    return uploadProfilePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_DeleteProfilePicture value)? deleteProfilePicture,
    required TResult orElse(),
  }) {
    if (uploadProfilePicture != null) {
      return uploadProfilePicture(this);
    }
    return orElse();
  }
}

abstract class _UploadProfilePicture implements ProfileImageEvent {
  const factory _UploadProfilePicture({required final String imagePath}) =
      _$UploadProfilePictureImpl;

  String get imagePath;
  @JsonKey(ignore: true)
  _$$UploadProfilePictureImplCopyWith<_$UploadProfilePictureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProfilePictureImplCopyWith<$Res> {
  factory _$$DeleteProfilePictureImplCopyWith(_$DeleteProfilePictureImpl value,
          $Res Function(_$DeleteProfilePictureImpl) then) =
      __$$DeleteProfilePictureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteProfilePictureImplCopyWithImpl<$Res>
    extends _$ProfileImageEventCopyWithImpl<$Res, _$DeleteProfilePictureImpl>
    implements _$$DeleteProfilePictureImplCopyWith<$Res> {
  __$$DeleteProfilePictureImplCopyWithImpl(_$DeleteProfilePictureImpl _value,
      $Res Function(_$DeleteProfilePictureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteProfilePictureImpl implements _DeleteProfilePicture {
  const _$DeleteProfilePictureImpl();

  @override
  String toString() {
    return 'ProfileImageEvent.deleteProfilePicture()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProfilePictureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String imagePath) uploadProfilePicture,
    required TResult Function() deleteProfilePicture,
  }) {
    return deleteProfilePicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String imagePath)? uploadProfilePicture,
    TResult? Function()? deleteProfilePicture,
  }) {
    return deleteProfilePicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String imagePath)? uploadProfilePicture,
    TResult Function()? deleteProfilePicture,
    required TResult orElse(),
  }) {
    if (deleteProfilePicture != null) {
      return deleteProfilePicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UploadProfilePicture value) uploadProfilePicture,
    required TResult Function(_DeleteProfilePicture value) deleteProfilePicture,
  }) {
    return deleteProfilePicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult? Function(_DeleteProfilePicture value)? deleteProfilePicture,
  }) {
    return deleteProfilePicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UploadProfilePicture value)? uploadProfilePicture,
    TResult Function(_DeleteProfilePicture value)? deleteProfilePicture,
    required TResult orElse(),
  }) {
    if (deleteProfilePicture != null) {
      return deleteProfilePicture(this);
    }
    return orElse();
  }
}

abstract class _DeleteProfilePicture implements ProfileImageEvent {
  const factory _DeleteProfilePicture() = _$DeleteProfilePictureImpl;
}
