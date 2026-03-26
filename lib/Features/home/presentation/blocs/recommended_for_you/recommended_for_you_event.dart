part of 'recommended_for_you_bloc.dart';

@freezed
class RecommendedForYouEvent with _$RecommendedForYouEvent {
  const factory RecommendedForYouEvent.loaded() = _Loaded;
  const factory RecommendedForYouEvent.reLoaded() = _Reloaded;
  const factory RecommendedForYouEvent.recommendedNextPageFetched() = _RecommendedNextPageFetched;
}