// 📛 Profile Name: referral_share_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class ReferralShareScreen extends StatelessWidget {
  const ReferralShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userReferralCode = 'MDX420';

    final product = {
      'title': 'Kisswaar Hoodie XL',
      'link': 'https://kisswaar.com/product/kisswaar-hoodie-xl?ref=MDX420',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('🎁 Share & Earn')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Your Referral Code: $userReferralCode', style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              icon: const Icon(Icons.share),
              label: const Text('Share Product with Code'),
              onPressed: () {
                Share.share('Check this out: ${product['title']}\nBuy now: ${product['link']}');
              },
            ),
            const SizedBox(height: 20),
            const Text('Every referral gets you rewards after order confirmation 💸'),
          ],
        ),
      ),
    );
  }
}
