// 📛 Profile Name: homepage_layout.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class HomepageLayoutScreen extends StatelessWidget {
  const HomepageLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final featuredProducts = [
      {'name': 'Kisswaar Hoodie XL', 'price': 799},
      {'name': 'Neon Socks Pack', 'price': 199},
      {'name': 'RoyalTrendz Shoes', 'price': 1299},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🛍️ Kisswaar')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('🎉 Trending Now', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          SizedBox(
            height: 180,
            child: PageView(
              children: [
                Image.network('https://example.com/banner1.jpg', fit: BoxFit.cover),
                Image.network('https://example.com/banner2.jpg', fit: BoxFit.cover),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Text('💎 Featured Products', style: TextStyle(fontSize: 18)),
          const SizedBox(height: 12),
          ...featuredProducts.map((item) => Card(
                child: ListTile(
                  leading: const Icon(Icons.local_offer),
                  title: Text(item['name']!),
                  trailing: Text('₹${item['price']}'),
                ),
              )),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.explore),
            label: const Text('Explore Categories'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
