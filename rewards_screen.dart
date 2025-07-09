// 📛 Profile Name: rewards_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import '../models/rewards_model.dart';

class RewardsScreen extends StatelessWidget {
  final List<Reward> rewards = [
    Reward(title: 'Welcome Bonus', points: 100, status: 'earned'),
    Reward(title: 'Referral Success', points: 200, status: 'claimed'),
  ];

  RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎁 Rewards')),
      body: ListView.builder(
        itemCount: rewards.length,
        itemBuilder: (_, index) {
          final reward = rewards[index];
          return ListTile(
            leading: const Icon(Icons.card_giftcard),
            title: Text('${reward.title} • ${reward.points} pts'),
            subtitle: Text('Status: ${reward.status}'),
            trailing: reward.status == 'earned'
                ? const Icon(Icons.check_circle, color: Colors.green)
                : const Icon(Icons.history),
          );
        },
      ),
    );
  }
}
