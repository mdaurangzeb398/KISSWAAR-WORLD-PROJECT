// 📛 Profile Name: lib/screens/cart.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🛒 Kisswaar Cart'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('💘 Kisswaar Signature Shoes'),
              subtitle: Text('₹999'),
              trailing: Text('Qty: 1'),
            ),
            const Divider(height: 24),
            const ListTile(
              title: Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold)),
              trailing: Text('₹999', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              icon: const Icon(Icons.check_circle),
              label: const Text('Proceed to Checkout'),
              onPressed: () {
                // TODO: Navigate to checkout.dart
              },
            ),
          ],
        ),
      ),
    );
  }
}
