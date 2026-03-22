// home_event.dart

part of 'home_bloc.dart';

@freezed
sealed class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.refreshed() = _Refreshed;

  // ─── Pagination ───────────────────────────────────
  const factory HomeEvent.recommendedNextPageFetched() = _RecommendedNextPageFetched;
  const factory HomeEvent.featuredNextPageFetched() = _FeaturedNextPageFetched;
}