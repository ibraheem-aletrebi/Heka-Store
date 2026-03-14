import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_store/core/app/app_bloc_or_chetrator.dart';
import 'package:heka_store/core/app/router/app_router.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:heka_store/generated/l10n.dart';
import 'package:heka_store/core/resources/app_theme.dart';

class HekaStoreApp extends StatelessWidget {
  const HekaStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBlocOrchestrator(
      builder: (themeState, langState) => ScreenUtilInit(
        designSize: const Size(393, 852),
        builder: (_, _) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp.router(
              routerConfig: sl<AppRouter>().router,
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
            ),
          );
        },
      ),
    );
  }
}
