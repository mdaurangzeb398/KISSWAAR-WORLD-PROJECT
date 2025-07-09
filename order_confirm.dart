// 📛 Profile Name: order_confirm.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class OrderConfirmScreen extends StatelessWidget {
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('✅ Order Confirmed'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.check_circle, size: 80, color: Colors.green),
            SizedBox(height: 20),
            Text('🎉 Thank you for your order!', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('🛍️ Your Kisswaar product will be shipped soon.'),
            SizedBox(height: 32),
            Text('🧾 Order ID: #KWS20250709'),
          ],
        ),
      ),
    );
  }
}
