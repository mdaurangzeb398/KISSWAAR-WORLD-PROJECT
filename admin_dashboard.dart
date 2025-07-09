// 📛 Profile Name: admin_dashboard.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final metrics = [
      {'label': '👥 Users', 'value': '124'},
      {'label': '🧾 Orders', 'value': '78'},
      {'label': '💸 Payouts Due', 'value': '₹12,450'},
      {'label': '💬 Feedbacks', 'value': '34'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🧮 Admin Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: metrics.map((metric) {
            return Card(
              elevation: 4,
              child: ListTile(
                leading: Text(metric['label']!, style: const TextStyle(fontSize: 24)),
                title: Text(metric['value']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
