// 📛 Profile Name: vendor_training.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class VendorTrainingScreen extends StatelessWidget {
  const VendorTrainingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final modules = [
      '📦 How to upload your product',
      '🖼️ Banner & logo setup',
      '📝 Product description tips',
      '📤 Shipping & packaging rules',
      '📊 Order tracking dashboard overview',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('📚 Vendor Training')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('Welcome, Vendor Partner!', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          const Text('These modules help you set up your Kisswaar brand perfectly:'),
          const SizedBox(height: 20),
          ...modules.map((topic) => ListTile(
                leading: const Icon(Icons.play_circle),
                title: Text(topic),
                trailing: const Icon(Icons.chevron_right),
              )),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.done_all),
            label: const Text('Mark All As Completed'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
