import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_store/blocs/language/language_bloc.dart';
import 'package:heka_store/blocs/theme/theme_bloc.dart';
import 'package:heka_store/enums/app_theme_mode_enum.dart';
import 'package:heka_store/enums/errors/language_error_enum.dart';
import 'package:heka_store/enums/errors/theme_error_enum.dart';
import 'package:heka_store/generated/l10n.dart';
import 'package:heka_store/resources/app_theme.dart';
import 'package:heka_store/services/local/local_storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorageService().init(adapters: [AppThemeModeEnumAdapter()]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              ThemeBloc(localStorage: LocalStorageService())
                ..add(const ThemeEvent.load()),
        ),
        BlocProvider(
          create: (_) =>
              LanguageBloc(localStorage: LocalStorageService())
                ..add(const LanguageEvent.load()),
        ),
      ],
      child: BlocConsumer<ThemeBloc, ThemeState>(
        listener: (context, state) {
          state.whenOrNull(
            failure: (error, fallback) {
              final message = _getThemeErrorMessage(context, error);
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },
        builder: (context, themeState) {
          return BlocConsumer<LanguageBloc, LanguageState>(
            listener: (context, state) {
              state.whenOrNull(
                failure: (error, fallback) {
                  final message = _getLanguageErrorMessage(context, error);
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text(message)));
                },
              );
            },
            builder: (context, langState) {
              return ScreenUtilInit(
                designSize: const Size(393, 852),
                builder: (_, _) {
                  return GestureDetector(
                    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                    child: MaterialApp(
                      locale: Locale(langState.languageCode),
                      localizationsDelegates: const [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: S.delegate.supportedLocales,
                      debugShowCheckedModeBanner: false,
                      theme: AppTheme.lightTheme,
                      darkTheme: AppTheme.darkTheme,
                      themeMode: themeState.themeMode,
                      home: const MyHomePage(title: 'Flutter Demo Home Page'),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  // Translate LanguageError enum to string
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

// ─── Home ────────────────────────────────────────────────────────────────

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return IconButton(
                icon: const Icon(Icons.mode_night),
                onPressed: () {
                  context.read<ThemeBloc>().add(ThemeEvent.toggle());
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<LanguageBloc, LanguageState>(
              builder: (context, state) {
                return ElevatedButton(
                  child: Text(
                    state.languageCode == 'ar' ? 'English' : 'Arabic',
                  ),
                  onPressed: () {
                    context.read<LanguageBloc>().add(
                      LanguageEvent.toggleArabicEnglish(),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 200.h),
            Text(S.of(context).apply),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
