part of 'language_bloc.dart';

@freezed
class LanguageEvent with _$LanguageEvent {
  const factory LanguageEvent.load() = LanguageLoadRequested;
  const factory LanguageEvent.change({required String langCode}) =
      LanguageChanged;
  const factory LanguageEvent.toggleArabicEnglish() =
      LanguageToggleArabicEnglish;
}
