// 📛 Profile Name: gdpr_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class GDPRScreen extends StatelessWidget {
  const GDPRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔐 Data & Privacy')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your Privacy Controls', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.file_download),
              label: const Text('Request Data Export'),
              onPressed: () {
                // TODO: Trigger Firebase export logic
              },
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              icon: const Icon(Icons.delete_forever),
              label: const Text('Delete My Account'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                // TODO: Confirm + delete account from Firebase
              },
            ),
            const SizedBox(height: 20),
            const Text('🔔 You will receive confirmation once request is processed.', style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
