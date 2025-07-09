import 'package:flutter/material.dart';

class WalletAuditLogScreen extends StatelessWidget {
  const WalletAuditLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final logs = [
      {'user': 'user123', 'type': 'Recharge', 'amount': 200.0, 'date': '2025-07-09'},
      {'user': 'user456', 'type': 'Refund', 'amount': 99.0, 'date': '2025-07-08'},
      {'user': 'user789', 'type': 'Purchase Deduct', 'amount': -149.0, 'date': '2025-07-07'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🔍 Wallet Audit Log')),
      body: ListView.builder(
        itemCount: logs.length,
        itemBuilder: (_, index) {
          final log = logs[index];
          return Card(
            child: ListTile(
              leading: Icon(
                log['amount']! > 0 ? Icons.add : Icons.remove,
                color: log['amount']! > 0 ? Colors.green : Colors.red,
              ),
              title: Text('${log['type']} • ₹${log['amount']}'),
              subtitle: Text('User: ${log['user']} • Date: ${log['date']}'),
              trailing: const Icon(Icons.admin_panel_settings),
            ),
          );
        },
      ),
    );
  }
}
