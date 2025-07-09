// 📛 Profile Name: order_history_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {'id': '#KWS1234', 'date': '6 Jul 2025', 'status': 'Delivered'},
      {'id': '#KWS1235', 'date': '8 Jul 2025', 'status': 'Packed'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('📜 Order History')),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (_, index) {
          final order = orders[index];
          return ListTile(
            leading: const Icon(Icons.receipt_long),
            title: Text(order['id']!),
            subtitle: Text('Date: ${order['date']!} • Status: ${order['status']}'),
            trailing: order['status'] == 'Delivered'
                ? TextButton(child: const Text('Return'), onPressed: () {})
                : const Icon(Icons.local_shipping),
          );
        },
      ),
    );
  }
}
