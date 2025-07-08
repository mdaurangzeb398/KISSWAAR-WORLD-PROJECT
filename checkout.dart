// 📛 Profile Name: lib/screens/checkout.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('💳 Checkout'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '🧾 Billing Summary:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            ListTile(
              title: Text('💘 Kisswaar Signature Shoes'),
              subtitle: Text('₹999'),
              trailing: Text('Qty: 1'),
            ),
            Divider(height: 24),
            ListTile(
              title: Text('Grand Total'),
              trailing: Text('₹999', style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 24),
            Text('🛡️ Payment Method:', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Credit / Debit Card'),
            ),
            ListTile(
              leading: Icon(Icons.qr_code),
              title: Text('UPI / QR Payment'),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.done_all),
              label: Text('Place Order'),
              onPressed: null, // TODO: link to order_confirm.dart
            ),
          ],
        ),
      ),
    );
  }
}
