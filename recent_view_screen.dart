// 📛 Profile Name: recent_view_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class RecentViewScreen extends StatelessWidget {
  const RecentViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recentItems = [
      {'title': 'Kisswaar Hoodie XL', 'price': 799},
      {'title': 'Neon Socks Pack', 'price': 199},
      {'title': 'RoyalTrendz Shoes', 'price': 1299},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🕵️ Recently Viewed')),
      body: ListView.builder(
        itemCount: recentItems.length,
        itemBuilder: (_, index) {
          final item = recentItems[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.history),
              title: Text(item['title']),
              trailing: Text('₹${item['price']}'),
            ),
          );
        },
      ),
    );
  }
}
