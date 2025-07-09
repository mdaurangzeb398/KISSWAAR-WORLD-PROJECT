// 📛 Profile Name: return_policy.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ReturnPolicyScreen extends StatelessWidget {
  const ReturnPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔁 Return & Refund Policy')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Text(
              '📝 Return Window',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('You can return products within 7 days of delivery.'),
            SizedBox(height: 16),
            Text(
              '💰 Refund Process',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Refunds will be processed to the original payment method within 3-5 working days.'),
            SizedBox(height: 16),
            Text(
              '📦 Return Conditions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('- Item must be unused\n- Original packaging required\n- Valid reason for return'),
            SizedBox(height: 24),
            Text(
              'For support, email us at support@kisswaar.com',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
