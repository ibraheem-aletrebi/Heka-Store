import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heka_store/core/blocs/language/language_bloc.dart';
import 'package:heka_store/core/blocs/theme/theme_bloc.dart';
import 'package:heka_store/core/di/injector.dart';

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
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return BlocBuilder<LanguageBloc, LanguageState>(
            builder: (context, langState) {
              return builder(themeState, langState);
            },
          );
        },
      ),
    );
  }
}
