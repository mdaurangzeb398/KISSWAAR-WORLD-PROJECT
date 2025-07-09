// 📛 Profile Name: user_dashboard.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class UserDashboard extends StatelessWidget {
  const UserDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = [
      {'label': '🛍️ Orders', 'value': '12'},
      {'label': '🎁 Rewards', 'value': '350 pts'},
      {'label': '📦 Deliveries', 'value': '5 active'},
      {'label': '🔔 Alerts', 'value': '3 unread'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('👤 Your Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: stats.map((stat) {
            return Card(
              elevation: 3,
              child: ListTile(
                leading: Text(stat['label']!, style: const TextStyle(fontSize: 24)),
                title: Text(stat['value']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
