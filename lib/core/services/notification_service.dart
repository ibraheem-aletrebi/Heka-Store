import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:heka_store/core/constants/hive_boxes.dart';
import 'package:heka_store/core/services/local/local_storage_service.dart';
import 'package:heka_store/core/services/local_notification_service.dart';

class NotificationService {
  NotificationService._();
  static final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  static Future<void> init() async {
    await _requestPermission();
    await _logToken();
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
    _listenToForegroundMessages();
    _listenToNotificationClick();
  }

  static Future<void> _requestPermission() async {
    await _messaging.requestPermission();
  }

  static Future<void> _logToken() async {
    final token = await _messaging.getToken();
    LocalStorageService().setValue<String>(
      HiveBoxes.data,
      "fcmToken",
      token ?? '',
    );
    print('FCM Token: $token');
  }

  static void _listenToForegroundMessages() {
    FirebaseMessaging.onMessage.listen((message) {
      LocalNotificationService.show(message);
    });
  }

  @pragma('vm:entry-point')
  static Future<void> _onBackgroundMessage(RemoteMessage message) async {
    WidgetsFlutterBinding.ensureInitialized();
    await LocalNotificationService.init();
    await LocalNotificationService.show(message);
  }

  static void _listenToNotificationClick() {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {});
  }
}
