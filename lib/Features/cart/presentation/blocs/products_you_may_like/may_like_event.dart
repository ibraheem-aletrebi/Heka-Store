part of 'may_like_bloc.dart';

@freezed
class MayLikeEvent with _$MayLikeEvent {
  const factory MayLikeEvent.loaded() = _Loaded;
  const factory MayLikeEvent.reLoaded() = _Reloaded;
  const factory MayLikeEvent.nextPageFetched() = _NextPageFetched; // unified name
}