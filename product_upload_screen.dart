// 📛 Profile Name: product_upload_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ProductUploadScreen extends StatefulWidget {
  const ProductUploadScreen({super.key});

  @override
  State<ProductUploadScreen> createState() => _ProductUploadScreenState();
}

class _ProductUploadScreenState extends State<ProductUploadScreen> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _priceController = TextEditingController();

  void _submitProduct() {
    final title = _titleController.text;
    final desc = _descController.text;
    final price = _priceController.text;

    if (title.isEmpty || desc.isEmpty || price.isEmpty) return;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('✅ Product Uploaded'),
        content: Text('Title: $title\nPrice: ₹$price\nDescription:\n$desc'),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
      ),
    );

    _titleController.clear();
    _descController.clear();
    _priceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📤 Upload Product')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: _titleController, decoration: const InputDecoration(labelText: 'Product Title')),
            const SizedBox(height: 12),
            TextField(controller: _descController, maxLines: 3, decoration: const InputDecoration(labelText: 'Description')),
            const SizedBox(height: 12),
            TextField(controller: _priceController, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Price ₹')),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.cloud_upload),
              label: const Text('Upload'),
              onPressed: _submitProduct,
            ),
          ],
        ),
      ),
    );
  }
}
