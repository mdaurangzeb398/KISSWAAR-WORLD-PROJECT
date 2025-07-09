import 'package:flutter/material.dart';

class BuyerCouponUnlockScreen extends StatelessWidget {
  const BuyerCouponUnlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buyerStats = {
      'name': 'Ayesha Khan',
      'orders': 38,
      'loyaltyLevel': '💚 Loyal Shopper',
    };

    final unlockedCoupons = [
      {'code': 'LOYAL10', 'discount': '10%', 'desc': '10% off on fashion'},
      {'code': 'FREESHIP', 'discount': '₹0', 'desc': 'Free delivery on next order'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🎟️ Your Coupons')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi ${buyerStats['name']},', style: const TextStyle(fontSize: 18)),
            Text('You\'ve unlocked these rewards as a ${buyerStats['loyaltyLevel']}!'),
            const SizedBox(height: 20),
            ...unlockedCoupons.map((c) => Card(
                  child: ListTile(
                    leading: const Icon(Icons.card_giftcard, color: Colors.green),
                    title: Text('${c['code']} • ${c['discount']}'),
                    subtitle: Text(c['desc']!),
                    trailing: const Icon(Icons.download),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
