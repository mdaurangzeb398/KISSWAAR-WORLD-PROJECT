import 'package:flutter/material.dart';

class AdminRefundWalletScreen extends StatefulWidget {
  const AdminRefundWalletScreen({super.key});

  @override
  State<AdminRefundWalletScreen> createState() => _AdminRefundWalletScreenState();
}

class _AdminRefundWalletScreenState extends State<AdminRefundWalletScreen> {
  final _userIdController = TextEditingController();
  final _amountController = TextEditingController();

  void _processRefund() {
    final userId = _userIdController.text.trim();
    final amount = double.tryParse(_amountController.text);

    if (userId.isEmpty || amount == null || amount <= 0) return;

    // TODO: Add amount to Firestore wallet balance under userId
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('✅ Refund Processed'),
        content: Text('₹$amount credited to wallet of user: $userId'),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
      ),
    );

    _userIdController.clear();
    _amountController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔁 Refund to Wallet')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: _userIdController, decoration: const InputDecoration(labelText: 'User ID')),
            const SizedBox(height: 12),
            TextField(controller: _amountController, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Amount ₹')),
            const SizedBox(height: 20),
            ElevatedButton.icon(icon: const Icon(Icons.send), label: const Text('Credit Wallet'), onPressed: _processRefund),
          ],
        ),
      ),
    );
  }
}
