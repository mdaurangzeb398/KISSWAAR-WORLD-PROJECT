import 'package:flutter/material.dart';

class UniversalProductViewer extends StatelessWidget {
  const UniversalProductViewer({super.key});

  @override
  Widget build(BuildContext context) {
    final product = {
      'title': 'Kisswaar Hoodie XL',
      'price': 799,
      'image': 'https://example.com/hoodie-display.jpg',
      'desc': 'Premium cotton. Relax fit. Logo printed. Free delivery all over India.',
    };

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: Image.network(product['image'], fit: BoxFit.contain),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.95),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(product['title'], style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(product['desc'], style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 8),
                  Text('₹${product['price']}', style: const TextStyle(fontSize: 18, color: Colors.green)),
                  const SizedBox(height: 8),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.shopping_cart),
                    label: const Text('Add to Cart'),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
