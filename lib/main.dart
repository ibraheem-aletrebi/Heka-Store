import 'package:flutter/material.dart';
import 'package:heka_store/core/app/heka_store_app.dart';
import 'package:heka_store/core/di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupInjector();
  runApp(const HekaStoreApp());
}
