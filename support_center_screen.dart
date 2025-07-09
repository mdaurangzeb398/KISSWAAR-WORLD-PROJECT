// 📛 Profile Name: support_center_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class SupportCenterScreen extends StatelessWidget {
  const SupportCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tickets = [
      {'id': '#T1001', 'user': 'Md Bhai', 'issue': 'Order not delivered', 'status': 'Open'},
      {'id': '#T1002', 'user': 'VendorX', 'issue': 'Payout delayed', 'status': 'Resolved'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('📬 Support Center')),
      body: ListView.builder(
        itemCount: tickets.length,
        itemBuilder: (_, index) {
          final ticket = tickets[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.report_problem),
              title: Text('${ticket['issue']}'),
              subtitle: Text('ID: ${ticket['id']} • User: ${ticket['user']}'),
              trailing: Chip(
                label: Text(ticket['status']),
                backgroundColor: ticket['status'] == 'Open' ? Colors.orange : Colors.green,
              ),
            ),
          );
        },
      ),
    );
  }
}
