import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationPushService {
  static final _localNotif = FlutterLocalNotificationsPlugin();
  static final _fcm = FirebaseMessaging.instance;

  static Future<void> init() async {
    // طلب إذن من المستخدم
    await _fcm.requestPermission(alert: true, badge: true, sound: true);

    // إعداد flutter_local_notifications
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings();
    await _localNotif.initialize(
      const InitializationSettings(android: androidSettings, iOS: iosSettings),
    );

    // إنشاء channel للأندرويد
    const channel = AndroidNotificationChannel(
      'heka_notifications', // channel id
      'Heka Notifications', // اسم بيظهر في الإعدادات
      description: 'Notifications from Heka app',
      importance: Importance.high,
    );
    await _localNotif
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);

    // استقبال الـ notifications وهو في الـ foreground
    FirebaseMessaging.onMessage.listen(_showForegroundNotif);

    // لما يضغط على الإشعار وهو background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleNotifTap);
  }

  static Future<void> _showForegroundNotif(RemoteMessage message) async {
    final notification = message.notification;
    if (notification == null) return;

    await _localNotif.show(
      notification.hashCode,
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'heka_notifications',
          'Heka Notifications',
          channelDescription: 'Notifications from Heka app',
          importance: Importance.high,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
        ),
      ),
    );
  }

  static void _handleNotifTap(RemoteMessage message) {
    // هنا تعمل navigate للـ NotificationsPage
    // navigatorKey.currentState?.push(...)
  }

  // جيب الـ FCM token وابعته للسيرفر
  static Future<String?> getFcmToken() async {
    return await _fcm.getToken();
  }
}

// ده لازم يكون top-level function (مش جوه class)
@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // التطبيق مقفول والإشعار جه — Firebase بيتعامل معاه تلقائياً
}
