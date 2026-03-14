import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/core/enums/errors/language_error_enum.dart';
import 'package:heka_store/core/enums/errors/theme_error_enum.dart';
import 'package:heka_store/generated/l10n.dart';

class AppBlocOrchestrator extends StatelessWidget {
  const AppBlocOrchestrator({super.key, required this.builder});

  final Widget Function(ThemeState themeState, LanguageState langState) builder;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<ThemeBloc>()..add(const ThemeEvent.load()),
        ),
        BlocProvider(
          create: (_) => sl<LanguageBloc>()..add(const LanguageEvent.load()),
        ),
      ],
      child: BlocConsumer<ThemeBloc, ThemeState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (error, fallback) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(_getThemeErrorMessage(context, error))),
              );
            },
          );
        },
        builder: (context, themeState) {
          return BlocConsumer<LanguageBloc, LanguageState>(
            listener: (context, state) {
              state.whenOrNull(
                failure: (error, fallback) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(_getLanguageErrorMessage(context, error)),
                    ),
                  );
                },
              );
            },
            builder: (context, langState) {
              return builder(themeState, langState);
            },
          );
        },
      ),
    );
  }

  String _getLanguageErrorMessage(BuildContext context, LanguageError error) {
    switch (error) {
      case LanguageError.loadFailed:
        return S.of(context).languageLoadError;
      case LanguageError.changeFailed:
        return S.of(context).languageChangeError;
      case LanguageError.toggleFailed:
        return S.of(context).languageToggleError;
    }
  }

  String _getThemeErrorMessage(BuildContext context, ThemeError error) {
    switch (error) {
      case ThemeError.loadFailed:
        return S.of(context).themeLoadError;
      case ThemeError.changeFailed:
        return S.of(context).themeChangeError;
      case ThemeError.toggleFailed:
        return S.of(context).themeToggleError;
    }
  }
}
