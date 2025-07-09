import 'package:flutter/material.dart';

class BuyerAppreciationWall extends StatelessWidget {
  const BuyerAppreciationWall({super.key});

  @override
  Widget build(BuildContext context) {
    final buyers = [
      {'name': 'Ayesha Khan', 'orders': 37, 'badge': '💚 Loyal Shopper'},
      {'name': 'Ravi Malhotra', 'orders': 29, 'badge': '🎯 Monthly Top Buyer'},
      {'name': 'Sneha Patel', 'orders': 19, 'badge': '✨ Style Hunter'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('💝 Buyer Appreciation Wall')),
      body: ListView.builder(
        itemCount: buyers.length,
        itemBuilder: (_, index) {
          final buyer = buyers[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: Icon(Icons.person, color: Colors.deepPurple),
              title: Text(buyer['name']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text('${buyer['orders']} Orders • ${buyer['badge']}'),
              trailing: const Icon(Icons.favorite, color: Colors.pinkAccent),
            ),
          );
        },
      ),
    );
  }
}
