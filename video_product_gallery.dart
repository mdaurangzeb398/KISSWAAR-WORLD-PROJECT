import 'package:flutter/material.dart';

class VideoProductGallery extends StatelessWidget {
  const VideoProductGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        'title': 'Kisswaar Hoodie XL',
        'price': 799,
        'videoThumb': 'https://example.com/hoodie-thumb.gif', // 3-sec loop preview
      },
      {
        'title': 'Neon Socks Pack',
        'price': 199,
        'videoThumb': 'https://example.com/socks-thumb.gif',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🎥 Trending Styles')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
        children: products.map((product) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.network(product['videoThumb'], height: 160, fit: BoxFit.cover),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(product['title'], style: const TextStyle(fontSize: 14), maxLines: 1),
                ),
                Text('₹${product['price']}', style: const TextStyle(fontSize: 13, color: Colors.green)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
