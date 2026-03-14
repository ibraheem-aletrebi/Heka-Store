import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:heka_store/app/heka_store_app.dart';
import 'package:heka_store/blocs/language/language_bloc.dart';
import 'package:heka_store/blocs/theme/theme_bloc.dart';
import 'package:heka_store/di/injector.dart';
import 'package:heka_store/generated/l10n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  runApp(const HekaStoreApp());
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
