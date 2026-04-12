import 'package:flutter/material.dart';
import 'package:heka_store/core/app/heka_store_app.dart';
import 'package:heka_store/core/di/injector.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:heka_store/core/services/notification_service.dart';
import 'package:heka_store/firebase_options.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await setupInjector();
  await NotificationService.init();
  runApp(const HekaStoreApp());
}
