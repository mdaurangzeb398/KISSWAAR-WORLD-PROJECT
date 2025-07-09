// 📛 Profile Name: trigger_notify.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import '../services/notification_service.dart';

class TriggerNotifyScreen extends StatelessWidget {
  final NotificationService _notificationService = NotificationService();

  TriggerNotifyScreen({super.key}) {
    _notificationService.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔔 Notifications')),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.notifications_active),
          label: const Text('Trigger Kisswaar Alert'),
          onPressed: () {
            _notificationService.showBasicNotification(
              '🎉 Order Confirmed!',
              'Your Kisswaar Signature Shoes are now being packed.',
            );
          },
        ),
      ),
    );
  }
}
