import 'package:flutter/material.dart';

class CapsuleTwinPreview extends StatelessWidget {
  final String capsuleTitle;
  final List<String> sharedTags;
  final List<String> buyerAItems;
  final List<String> buyerBItems;

  const CapsuleTwinPreview({
    super.key,
    required this.capsuleTitle,
    required this.sharedTags,
    required this.buyerAItems,
    required this.buyerBItems,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(capsuleTitle)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Wrap(spacing: 8, children: sharedTags.map((tag) => Chip(label: Text(tag))).toList()),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildCapsuleColumn('👤 You', buyerAItems),
                const SizedBox(width: 20),
                _buildCapsuleColumn('👥 Match', buyerBItems),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCapsuleColumn(String label, List<String> items) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ...items.map((item) => Card(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: ListTile(title: Text(item)),
              )),
        ],
      ),
    );
  }
}
