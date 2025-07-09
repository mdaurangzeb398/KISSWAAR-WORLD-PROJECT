// 📛 Profile Name: wallet_balance_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class WalletBalanceScreen extends StatelessWidget {
  const WalletBalanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final walletBalance = 420.00;
    final recentTxns = [
      {'desc': 'Referral Bonus', 'amount': 100.0},
      {'desc': 'Hoodie Purchase', 'amount': -199.0},
      {'desc': 'Reward Credit', 'amount': 50.0},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('💳 Kisswaar Wallet')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Current Balance: ₹$walletBalance', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text('Recent Transactions:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            ...recentTxns.map((txn) => ListTile(
                  leading: Icon(txn['amount']! > 0 ? Icons.arrow_downward : Icons.arrow_upward,
                      color: txn['amount']! > 0 ? Colors.green : Colors.red),
                  title: Text(txn['desc']),
                  trailing: Text('₹${txn['amount']}', style: const TextStyle(fontSize: 14)),
                )),
          ],
        ),
      ),
    );
  }
}
