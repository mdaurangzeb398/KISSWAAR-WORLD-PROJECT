import 'package:flutter/material.dart';

class HomepageSellerBanner extends StatelessWidget {
  const HomepageSellerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final topSellers = [
      {
        'vendor': 'FashionKart',
        'badge': '🔥 Top Seller',
        'bannerImage': 'https://example.com/fashionkart-banner.jpg',
      },
      {
        'vendor': 'UrbanStyle Hub',
        'badge': '💎 Premium Rated',
        'bannerImage': 'https://example.com/urbanstyle-banner.jpg',
      },
    ];

    return SizedBox(
      height: 160,
      child: PageView.builder(
        itemCount: topSellers.length,
        itemBuilder: (_, index) {
          final seller = topSellers[index];
          return Stack(
            children: [
              Image.network(seller['bannerImage'], width: double.infinity, fit: BoxFit.cover),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.black.withOpacity(0.6), Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),
                child: Text('${seller['vendor']} • ${seller['badge']}', style: const TextStyle(fontSize: 16, color: Colors.white)),
              )
            ],
          );
        },
      ),
    );
  }
}
