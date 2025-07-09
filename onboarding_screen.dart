// 📛 Profile Name: onboarding_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final features = [
      {'icon': Icons.flash_on, 'text': 'Fast Dropshipping Setup'},
      {'icon': Icons.security, 'text': 'Secure Firebase Backend'},
      {'icon': Icons.recommend, 'text': 'AI Assistant Guidance'},
      {'icon': Icons.card_giftcard, 'text': 'Reward & Loyalty System'},
      {'icon': Icons.analytics, 'text': 'Analytics & CRM Tools'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🚀 Welcome to Kisswaar')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text('🔥 Why Kisswaar?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          ...features.map((feature) => ListTile(
                leading: Icon(feature['icon'] as IconData),
                title: Text(feature['text'] as String),
              )),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Start Your Journey'),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ],
      ),
    );
  }
}
