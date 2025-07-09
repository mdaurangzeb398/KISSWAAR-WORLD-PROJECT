// 📛 Profile Name: firestore_service.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product_model.dart';

class FirestoreService {
  final _db = FirebaseFirestore.instance;

  Future<List<Product>> fetchProducts() async {
    final snapshot = await _db.collection('products').get();
    return snapshot.docs.map((doc) => Product.fromJson(doc.data())).toList();
  }

  Future<void> addProduct(Product product) async {
    await _db.collection('products').doc(product.id).set(product.toJson());
  }

  Future<void> deleteProduct(String id) async {
    await _db.collection('products').doc(id).delete();
  }
}
