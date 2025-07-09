import 'package:flutter/material.dart';

class SellerTierBanner extends StatelessWidget {
  final String tier;
  const SellerTierBanner({super.key, required this.tier});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text('Your Seller Tier: $tier', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
