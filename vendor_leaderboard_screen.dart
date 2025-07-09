// 📛 Profile Name: vendor_leaderboard_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class VendorLeaderboardScreen extends StatelessWidget {
  const VendorLeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final leaderboard = [
      {'vendor': 'FashionKart', 'score': 981, 'badge': '🔥 Top Seller'},
      {'vendor': 'UrbanStyle Hub', 'score': 853, 'badge': '💎 Premium Rated'},
      {'vendor': 'StreetZone', 'score': 801, 'badge': '🚀 Fast Shipper'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🏆 Vendor Leaderboard')),
      body: ListView.builder(
        itemCount: leaderboard.length,
        itemBuilder: (_, index) {
          final vendor = leaderboard[index];
          return Card(
            child: ListTile(
              leading: Text('#${index + 1}', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              title: Text(vendor['vendor'], style: const TextStyle(fontSize: 18)),
              subtitle: Text(vendor['badge']),
              trailing: Text('Score: ${vendor['score']}'),
            ),
          );
        },
      ),
    );
  }
}
