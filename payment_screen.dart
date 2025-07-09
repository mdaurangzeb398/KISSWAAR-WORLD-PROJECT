// 📛 Profile Name: payment_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final totalAmount = 999.0; // example cart total

    return Scaffold(
      appBar: AppBar(title: const Text('💳 Razorpay Payment')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Your Total:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('₹$totalAmount', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            const Text('We use Razorpay for secure payments:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Text('🛡️ Card, UPI, Wallets Supported'),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.payment),
              label: const Text('Pay with Razorpay'),
              onPressed: () {
                // TODO: Implement Razorpay integration here
              },
            ),
          ],
        ),
      ),
    );
  }
}
