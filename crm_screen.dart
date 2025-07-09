// 📛 Profile Name: crm_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class CrmScreen extends StatelessWidget {
  const CrmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customers = [
      {'name': 'Amit Singh', 'email': 'amit@kisswaar.com', 'order': '#KWS123'},
      {'name': 'Priya Das', 'email': 'priya@kisswaar.com', 'order': '#KWS124'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('💼 CRM - Customer Manager')),
      body: ListView.builder(
        itemCount: customers.length,
        itemBuilder: (_, index) {
          final customer = customers[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(customer['name']!),
            subtitle: Text('${customer['email']} • ${customer['order']}'),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}
