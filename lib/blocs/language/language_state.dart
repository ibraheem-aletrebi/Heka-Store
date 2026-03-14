part of 'language_bloc.dart';

@freezed
class LanguageState with _$LanguageState {
  const LanguageState._(); 

  const factory LanguageState.initial() = _Initial;
  const factory LanguageState.loading() = _Loading;
  const factory LanguageState.loaded({required String langCode}) = _Loaded;
  const factory LanguageState.failure({
    required String message,
    @Default('ar') String fallback,
  }) = _Failure;

  String get languageCode => maybeWhen(
        loaded: (code) => code,
        failure: (_, fallback) => fallback,
        orElse: () => '',
      );

  bool get isLoading => this is _Loading;
}