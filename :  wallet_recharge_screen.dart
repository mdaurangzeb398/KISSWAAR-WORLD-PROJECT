import 'package:flutter/material.dart';

class WalletRechargeScreen extends StatefulWidget {
  const WalletRechargeScreen({super.key});

  @override
  State<WalletRechargeScreen> createState() => _WalletRechargeScreenState();
}

class _WalletRechargeScreenState extends State<WalletRechargeScreen> {
  final _amountController = TextEditingController();

  void _rechargeWallet() {
    final amount = double.tryParse(_amountController.text);
    if (amount != null && amount > 0) {
      // TODO: Trigger Razorpay / UPI flow for top-up
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('✅ Recharge Requested'),
          content: Text('₹$amount will be added once payment is confirmed.'),
          actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔌 Recharge Kisswaar Wallet')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Enter Amount (₹)', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.payment),
              label: const Text('Recharge Now'),
              onPressed: _rechargeWallet,
            ),
          ],
        ),
      ),
    );
  }
}
