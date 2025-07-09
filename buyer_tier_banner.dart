import 'package:flutter/material.dart';

class BuyerTierBanner extends StatelessWidget {
  final String tier;
  const BuyerTierBanner({super.key, required this.tier});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),
      child: Text('Your Loyalty Tier: $tier', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
