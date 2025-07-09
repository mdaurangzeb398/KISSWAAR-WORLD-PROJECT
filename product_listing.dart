// 📛 Profile Name: product_listing.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import '../services/firestore_service.dart';
import '../models/product_model.dart';

class ProductListingScreen extends StatefulWidget {
  const ProductListingScreen({super.key});

  @override
  State<ProductListingScreen> createState() => _ProductListingScreenState();
}

class _ProductListingScreenState extends State<ProductListingScreen> {
  final FirestoreService _firestoreService = FirestoreService();
  List<Product> _products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final products = await _firestoreService.fetchProducts();
    setState(() {
      _products = products;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🛍️ Live Products')),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          final product = _products[index];
          return ListTile(
            leading: Image.network(product.imageUrl, width: 50, height: 50),
            title: Text(product.title),
            subtitle: Text('₹${product.price.toString()}'),
          );
        },
      ),
    );
  }
}
