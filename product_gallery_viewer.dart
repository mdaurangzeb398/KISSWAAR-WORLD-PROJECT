// 📛 Profile Name: product_gallery_viewer.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ProductGalleryViewer extends StatelessWidget {
  const ProductGalleryViewer({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'https://example.com/hoodie-front.jpg',
      'https://example.com/hoodie-back.jpg',
      'https://example.com/hoodie-zoom.jpg',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🖼️ Product Gallery')),
      body: PageView.builder(
        itemCount: images.length,
        itemBuilder: (_, index) {
          return InteractiveViewer(
            child: Image.network(images[index], fit: BoxFit.contain),
          );
        },
      ),
    );
  }
}
