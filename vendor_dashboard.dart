// 📛 Profile Name: vendor_dashboard.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class VendorDashboardScreen extends StatelessWidget {
  const VendorDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = {
      'products': 24,
      'orders': 14,
      'payoutDue': 4220.0,
      'returns': 2,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('🏪 Vendor Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Welcome Vendor!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            _buildStatCard('📦 Products Listed', '${stats['products']}'),
            _buildStatCard('🧾 Orders Received', '${stats['orders']}'),
            _buildStatCard('💸 Payout Due', '₹${stats['payoutDue']}'),
            _buildStatCard('🔁 Returns', '${stats['returns']}'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String label, String value) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: const Icon(Icons.analytics),
        title: Text(label),
        trailing: Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
