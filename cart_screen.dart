// 📛 Profile Name: cart_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import '../models/cart_model.dart';

class CartScreen extends StatelessWidget {
  final List<CartItem> cartItems = [
    CartItem(id: 'P1', title: 'Kisswaar Hoodie XL', price: 799, quantity: 1),
    CartItem(id: 'P2', title: 'Neon Socks Pack', price: 199, quantity: 2),
  ];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double total = cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('🛒 My Cart')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (_, index) {
                  final item = cartItems[index];
                  return ListTile(
                    leading: const Icon(Icons.shopping_bag),
                    title: Text(item.title),
                    subtitle: Text('₹${item.price} x ${item.quantity}'),
                    trailing: const Icon(Icons.delete_outline),
                  );
                },
              ),
            ),
            const Divider(),
            Text('Total: ₹$total', style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.payment),
              label: const Text('Proceed to Checkout'),
              onPressed: () {
                Navigator.pushNamed(context, '/checkout');
              },
            ),
          ],
        ),
      ),
    );
  }
}
