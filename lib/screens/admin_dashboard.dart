// 📛 Profile Name: admin_dashboard.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('👑 Admin Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('📊 Kisswaar Insights & Controls', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('Manage users, sync vendors, view performance & run updates.'),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('User Management'),
            ),
            ListTile(
              leading: Icon(Icons.inventory_2),
              title: Text('Product Sync Control'),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Sales Analytics'),
            ),
            ListTile(
              leading: Icon(Icons.system_update_alt),
              title: Text('Run Admin Updates'),
            ),
          ],
        ),
      ),
    );
  }
}
