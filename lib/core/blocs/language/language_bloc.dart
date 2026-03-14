import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/core/constants/hive_keys.dart';
import 'package:heka_store/core/enums/errors/language_error_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc({
    required LocalStorageService localStorage,
  }) : _localStorage = localStorage,
       super(const LanguageState.initial()) {
    on<LanguageLoadRequested>(_onLoad);
    on<LanguageChanged>(_onChange);
    on<LanguageToggleArabicEnglish>(_onToggle);
  }

  final LocalStorageService _localStorage;
  Future<void> _onLoad(
    LanguageLoadRequested event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      emit(const LanguageState.loading());
      final savedLang =
          _localStorage.getValue<String>(HiveKeys.langCode) ?? 'ar';
      emit(LanguageState.loaded(langCode: savedLang));
    } catch (e) {
      emit(LanguageState.failure(languageError: LanguageError.loadFailed));
    }
  }

  Future<void> _onChange(
    LanguageChanged event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      emit(const LanguageState.loading());
      await _localStorage.setValue<String>(HiveKeys.langCode, event.langCode);
      emit(LanguageState.loaded(langCode: event.langCode));
    } catch (e) {
      emit(LanguageState.failure(languageError: LanguageError.changeFailed));
    }
  }

  Future<void> _onToggle(
    LanguageToggleArabicEnglish event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      final current = state.languageCode;

      final newLang = current == 'ar' ? 'en' : 'ar';
      emit(const LanguageState.loading());
      await _localStorage.setValue<String>(HiveKeys.langCode, newLang);
      emit(LanguageState.loaded(langCode: newLang));
    } catch (e) {
      emit(LanguageState.failure(languageError: LanguageError.toggleFailed));
    }
  }
}
