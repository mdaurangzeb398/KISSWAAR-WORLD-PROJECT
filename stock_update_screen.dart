// 📛 Profile Name: stock_update_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class StockUpdateScreen extends StatelessWidget {
  const StockUpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stockList = [
      {'title': 'Kisswaar Hoodie XL', 'qty': 3},
      {'title': 'RoyalTrendz Shoes', 'qty': 1},
      {'title': 'NeonSocks Pack', 'qty': 9},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('📦 Inventory Alerts')),
      body: ListView.builder(
        itemCount: stockList.length,
        itemBuilder: (context, index) {
          final item = stockList[index];
          final isLow = item['qty']! <= 3;
          return ListTile(
            leading: const Icon(Icons.inventory),
            title: Text(item['title']!),
            subtitle: Text('Quantity Left: ${item['qty']}'),
            trailing: isLow
                ? const Icon(Icons.warning, color: Colors.red)
                : const Icon(Icons.check_circle, color: Colors.green),
          );
        },
      ),
    );
  }
}
