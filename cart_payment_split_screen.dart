import 'package:flutter/material.dart';

class CartPaymentSplitScreen extends StatelessWidget {
  const CartPaymentSplitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final walletBalance = 150.0;
    final cartTotal = 299.0;
    final walletUsed = walletBalance >= cartTotal ? cartTotal : walletBalance;
    final remaining = cartTotal - walletUsed;

    return Scaffold(
      appBar: AppBar(title: const Text('💰 Smart Cart Checkout')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('🧺 Cart Total: ₹$cartTotal', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('💳 Wallet Used: ₹$walletUsed'),
            Text('🪙 Payable via Razorpay/UPI: ₹$remaining'),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.shopping_bag),
              label: const Text('Proceed to Split Payment'),
              onPressed: () {
                // TODO: Deduct ₹walletUsed from wallet
                // TODO: Initiate ₹remaining via Razorpay
              },
            ),
          ],
        ),
      ),
    );
  }
}
