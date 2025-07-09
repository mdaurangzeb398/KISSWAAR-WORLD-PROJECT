import 'package:flutter/material.dart';

class WalletPaymentOption extends StatelessWidget {
  const WalletPaymentOption({super.key});

  @override
  Widget build(BuildContext context) {
    final walletBalance = 420.00;
    final cartTotal = 199.00;

    final canPayWithWallet = walletBalance >= cartTotal;

    return Scaffold(
      appBar: AppBar(title: const Text('🛒 Pay with Kisswaar Wallet')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Cart Total: ₹$cartTotal', style: const TextStyle(fontSize: 18)),
            Text('Wallet Balance: ₹$walletBalance', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.wallet),
              label: const Text('Pay Now'),
              onPressed: canPayWithWallet
                  ? () {
                      // TODO: Deduct wallet amount & complete order flow
                      showDialog(
                        context: context,
                        builder: (_) => AlertDialog(
                          title: const Text('✅ Payment Successful'),
                          content: const Text('Cart paid via Kisswaar Wallet'),
                          actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
                        ),
                      );
                    }
                  : null,
            ),
            if (!canPayWithWallet)
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text('❌ Not enough balance. Please recharge wallet.', style: TextStyle(color: Colors.red)),
              ),
          ],
        ),
      ),
    );
  }
}
