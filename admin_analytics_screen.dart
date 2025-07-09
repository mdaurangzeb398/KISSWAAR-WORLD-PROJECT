// 📛 Profile Name: admin_analytics_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class AdminAnalyticsScreen extends StatelessWidget {
  const AdminAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = {
      'Orders': [5, 8, 12, 10, 15],
      'Revenue': [5000, 8200, 9100, 8800, 13500],
    };

    return Scaffold(
      appBar: AppBar(title: const Text('📊 Analytics Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('📈 Orders (Last 5 Days)', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            SizedBox(
              height: 100,
              child: Row(
                children: stats['Orders']!
                    .map((val) => Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            height: val * 6,
                            color: Colors.blue,
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 24),
            const Text('💰 Revenue (₹)', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            SizedBox(
              height: 100,
              child: Row(
                children: stats['Revenue']!
                    .map((val) => Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            height: val / 100,
                            color: Colors.green,
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
