// 📛 Profile Name: vendor_panel.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class VendorPanelScreen extends StatelessWidget {
  const VendorPanelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🧑‍💼 Vendor Panel'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('🚀 Welcome Vendor!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('📦 Manage your products, track orders, and sync payouts below.'),
            SizedBox(height: 24),
            ListTile(
              leading: Icon(Icons.cloud_upload),
              title: Text('Upload Products'),
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text('Order Management'),
            ),
            ListTile(
              leading: Icon(Icons.payments),
              title: Text('Payout Summary'),
            ),
            ListTile(
              leading: Icon(Icons.sync),
              title: Text('Connect to Shopify'),
            ),
          ],
        ),
      ),
    );
  }
}
