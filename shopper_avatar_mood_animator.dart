import 'package:flutter/material.dart';

class ShopperAvatarMoodAnimator extends StatelessWidget {
  final String vibeName;

  const ShopperAvatarMoodAnimator({super.key, required this.vibeName});

  @override
  Widget build(BuildContext context) {
    final avatarEmoji = {
      'Dark Mode Pulse': '🖤',
      'Urban Buzz': '🔥',
      'Calm Minimal': '🌿',
    }[vibeName] ?? '🛍️';

    final avatarPose = {
      'Dark Mode Pulse': 'assets/avatars/dark_pose.gif',
      'Urban Buzz': 'assets/avatars/urban_dance.gif',
      'Calm Minimal': 'assets/avatars/chill_pose.gif',
    }[vibeName] ?? 'assets/avatars/default_idle.gif';

    return Column(
      children: [
        Text('Your Avatar Mood: $avatarEmoji', style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 10),
        Image.asset(avatarPose, height: 120),
      ],
    );
  }
}
