import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/constants/local_storage_keys.dart';
import 'package:heka_store/core/enums/errors/language_error_enum.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/remote/interceptors/language_interceptor.dart';
part 'language_bloc.freezed.dart';
part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc({
    required LocalStorageService localStorage,
    required LanguageInterceptor languageInterceptor,       
  }) : _localStorage = localStorage,
       _languageInterceptor = languageInterceptor,  
       super(const LanguageState.initial()) {
    on<LanguageLoadRequested>(_onLoad);
    on<LanguageChanged>(_onChange);
    on<LanguageToggleArabicEnglish>(_onToggle);
  }

  final LocalStorageService _localStorage;
  final LanguageInterceptor _languageInterceptor;

  Future<void> _onLoad(
    LanguageLoadRequested event,
    Emitter<LanguageState> emit,
  ) async {
    try {
      emit(const LanguageState.loading());
      final savedLang =
          _localStorage.getValue<String>(
            HiveBoxes.app,
            LocalStorageKeys.langCode,
          ) ?? 'en';
      _languageInterceptor.updateLanguage(savedLang); // ← sync on load
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
      await _localStorage.setValue<String>(
        HiveBoxes.app,
        LocalStorageKeys.langCode,
        event.langCode,
      );
      _languageInterceptor.updateLanguage(event.langCode); // ← sync on change
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
      await _localStorage.setValue<String>(
        HiveBoxes.app,
        LocalStorageKeys.langCode,
        newLang,
      );
      _languageInterceptor.updateLanguage(newLang); // ← sync on toggle
      emit(LanguageState.loaded(langCode: newLang));
    } catch (e) {
      emit(LanguageState.failure(languageError: LanguageError.toggleFailed));
    }
  }
}