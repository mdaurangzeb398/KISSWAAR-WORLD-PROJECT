// 📛 Profile Name: inventory_tracker_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class InventoryTrackerScreen extends StatelessWidget {
  const InventoryTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stock = [
      {'product': 'Kisswaar Hoodie XL', 'available': 12, 'threshold': 5},
      {'product': 'Neon Socks Pack', 'available': 3, 'threshold': 5},
      {'product': 'StreetBackpack Pro', 'available': 0, 'threshold': 2},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('📦 Inventory Tracker')),
      body: ListView.builder(
        itemCount: stock.length,
        itemBuilder: (_, index) {
          final item = stock[index];
          final lowStock = item['available']! <= item['threshold']!;
          return Card(
            color: lowStock ? Colors.red[50] : Colors.white,
            child: ListTile(
              leading: const Icon(Icons.inventory_2),
              title: Text(item['product']),
              subtitle: Text('Available: ${item['available']}'),
              trailing: lowStock
                  ? const Chip(label: Text('Low Stock'), backgroundColor: Colors.redAccent)
                  : const Chip(label: Text('Sufficient'), backgroundColor: Colors.green),
            ),
          );
        },
      ),
    );
  }
}
