// notification_service.dart

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/local_notification_service.dart';

// ✅ Must be a top-level function — Firebase background isolate requirement
@pragma('vm:entry-point')
Future<void> onBackgroundMessage(RemoteMessage message) async {
  // ✅ No WidgetsFlutterBinding here — not needed and wrong in isolates
  await LocalNotificationService.show(message);
}

class NotificationService {
  NotificationService._();

  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  static Future<void> init() async {
    await _requestPermission();
    await _saveToken();
    // ✅ Init local notifications ONCE here, not per-message
    await LocalNotificationService.init();
    FirebaseMessaging.onBackgroundMessage(onBackgroundMessage);
    _listenToForegroundMessages();
    _listenToNotificationClick();
  }

  static Future<void> _requestPermission() async {
    await _messaging.requestPermission();
  }

  static Future<void> _saveToken() async {
    final token = await _messaging.getToken();
    await LocalStorageService().setValue<String>(
      HiveBoxes.data,
      'fcmToken',
      token ?? '',
    );
    debugPrint('FCM Token: $token'); // ✅ debugPrint instead of print
  }

  static void _listenToForegroundMessages() {
    FirebaseMessaging.onMessage.listen((message) async {
      await LocalNotificationService.show(message); // ✅ No init() here
    });
  }

  static void _listenToNotificationClick() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      // TODO: handle navigation based on message.data
    });
  }
}