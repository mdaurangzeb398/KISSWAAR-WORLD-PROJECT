// 📛 Profile Name: checkout_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('💳 Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Text('Shipping Info:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(decoration: InputDecoration(labelText: 'Full Name')),
            TextField(decoration: InputDecoration(labelText: 'Address')),
            TextField(decoration: InputDecoration(labelText: 'Phone Number')),
            SizedBox(height: 20),
            Text('Payment:', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('💡 Payment integration coming soon (e.g. Razorpay)'),
            SizedBox(height: 20),
            ElevatedButton.icon(
              icon: Icon(Icons.done),
              label: Text('Confirm Order'),
              onPressed: null, // TODO: integrate order placement
            ),
          ],
        ),
      ),
    );
  }
}
