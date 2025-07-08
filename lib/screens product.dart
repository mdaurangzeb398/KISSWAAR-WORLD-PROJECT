// 📛 Profile Name: lib/screens/product.dart

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details 🛍️'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '💘 Kisswaar Signature Shoes',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text('⚡ Crafted for comfort & style. Built for trendsetters of 2025.'),
            SizedBox(height: 24),
            Text('Price: ₹999', style: TextStyle(fontSize: 18)),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.shopping_cart),
              label: Text('Add to Cart'),
              onPressed: null, // later linked to cart logic
            ),
          ],
        ),
      ),
    );
  }
}
