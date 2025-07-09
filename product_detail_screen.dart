// 📛 Profile Name: product_detail_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = {
      'title': 'Kisswaar Hoodie XL',
      'price': 799.0,
      'images': [
        'https://example.com/img1.jpg',
        'https://example.com/img2.jpg',
      ],
      'description': 'Premium cotton hoodie with Kisswaar logo. Unisex. Washable. Comfortable fit.',
      'rating': 4.7,
      'reviews': 132,
    };

    return Scaffold(
      appBar: AppBar(title: Text(product['title']!)),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 220,
            child: PageView(
              children: (product['images'] as List<String>)
                  .map((img) => Image.network(img, fit: BoxFit.cover))
                  .toList(),
            ),
          ),
          const SizedBox(height: 12),
          Text('₹${product['price']}', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange),
              Text('${product['rating']} (${product['reviews']} reviews)', style: const TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 20),
          Text(product['description']!, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.shopping_cart),
            label: const Text('Add to Cart'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
