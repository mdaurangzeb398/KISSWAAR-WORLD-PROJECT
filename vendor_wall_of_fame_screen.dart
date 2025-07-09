import 'package:flutter/material.dart';

class VendorWallOfFameScreen extends StatelessWidget {
  const VendorWallOfFameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final legendaryVendors = [
      {'name': 'NeoThread Co.', 'tier': '🏆 Platinum', 'badge': '🔥 Top Seller'},
      {'name': 'UrbanStyle Hub', 'tier': '🥇 Gold', 'badge': '💎 Premium Rated'},
      {'name': 'StreetZone', 'tier': '🥈 Silver', 'badge': '🚀 Fast Shipper'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🏛️ Wall of Fame')),
      body: ListView.builder(
        itemCount: legendaryVendors.length,
        itemBuilder: (_, index) {
          final vendor = legendaryVendors[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(child: Text(vendor['tier']!.split(' ')[0])),
              title: Text(vendor['name']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text('${vendor['tier']} • ${vendor['badge']}'),
              trailing: Icon(Icons.star, color: Colors.amber[600]),
            ),
          );
        },
      ),
    );
  }
}
