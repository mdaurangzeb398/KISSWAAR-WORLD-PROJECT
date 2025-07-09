// 📛 Profile Name: notification_service.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  final _notifications = FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initSettings = InitializationSettings(android: androidSettings);
    await _notifications.initialize(initSettings);
  }

  Future<void> showBasicNotification(String title, String body) async {
    const details = NotificationDetails(
      android: AndroidNotificationDetails(
        'kisswaar_channel',
        'Kisswaar Alerts',
        importance: Importance.high,
        priority: Priority.high,
      ),
    );

    await _notifications.show(0, title, body, details);
  }
}
