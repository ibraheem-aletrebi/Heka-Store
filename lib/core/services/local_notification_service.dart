// local_notification_service.dart

import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

class LocalNotificationService {
  LocalNotificationService._();

  static const _channelId = 'channelId';
  static const _channelName = 'Default Channel';

  static final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    const settings = InitializationSettings(android: androidSettings);

    await _plugin.initialize(
      settings: settings,
      onDidReceiveNotificationResponse: _onNotificationTap, // ✅ foreground tap
      onDidReceiveBackgroundNotificationResponse:
          _onNotificationTap, // background tap
    );

    const channel = AndroidNotificationChannel(
      _channelId,
      _channelName,
      importance: Importance.high,
    );

    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }

  @pragma('vm:entry-point')
  static void _onNotificationTap(NotificationResponse response) {
    // TODO: parse response.payload and handle navigation
  }

  static Future<void> show(RemoteMessage message) async {
    final data = message.data;
    final title =
        message.notification?.title ?? data['title'] ?? 'Notification';
    final body = message.notification?.body ?? data['body'] ?? '';
    final imageUrl = data['image'] as String?;
    final style = await _buildImageStyle(imageUrl);

    final androidDetails = AndroidNotificationDetails(
      _channelId,
      _channelName,
      importance: Importance.max,
      priority: Priority.high,
      color: const Color(0xffFF7A00),
      playSound: true,
      styleInformation: style,
    );

    // ✅ Safe 32-bit id: take only the lower 20 bits (~1M range, avoids overflow)
    final id = DateTime.now().millisecondsSinceEpoch & 0xFFFFF;

    await _plugin.show(
      id: id,
      title: title,
      body: body,
      notificationDetails: NotificationDetails(android: androidDetails),
      payload: jsonEncode(data),
    );
  }

  static Future<StyleInformation?> _buildImageStyle(String? imageUrl) async {
    if (imageUrl == null || imageUrl.isEmpty) return null;
    try {
      final response = await http.get(Uri.parse(imageUrl));
      if (response.statusCode != 200) return null;
      return BigPictureStyleInformation(
        ByteArrayAndroidBitmap.fromBase64String(
          base64Encode(response.bodyBytes),
        ),
      );
    } catch (_) {
      return null;
    }
  }
}
