// 📛 Profile Name: vendor_brand_page.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class VendorBrandPage extends StatelessWidget {
  const VendorBrandPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vendor = {
      'name': 'RoyalTrendz',
      'banner': 'https://example.com/banner.jpg',
      'logo': 'https://example.com/logo.png',
      'about': 'At RoyalTrendz, we believe fashion is royalty. We serve trending wearables with regal charm.',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('🏷️ Vendor Brand')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Image.network(vendor['banner']!, height: 180, fit: BoxFit.cover),
          const SizedBox(height: 16),
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(vendor['logo']!),
              ),
              const SizedBox(width: 12),
              Text(vendor['name']!, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 20),
          Text(vendor['about']!, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.shopping_bag),
            label: const Text('View Products'),
            onPressed: () => Navigator.pushNamed(context, '/product'),
          ),
        ],
      ),
    );
  }
}
