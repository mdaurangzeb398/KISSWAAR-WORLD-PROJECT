// 📛 Profile Name: product_share_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ProductShareScreen extends StatelessWidget {
  const ProductShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final product = {
      'title': 'Kisswaar Hoodie XL',
      'image': 'https://example.com/kisswaar-hoodie.jpg',
      'link': 'https://kisswaar.com/product/kisswaar-hoodie-xl',
      'desc': 'Premium cotton, XL fit, ₹799',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('🔗 Share Product')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(product['image']),
            const SizedBox(height: 12),
            Text(product['title'], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(product['desc']),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              icon: const Icon(Icons.share),
              label: const Text('Share Now'),
              onPressed: () {
                Share.share('${product['title']} — ₹799\n${product['link']}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
