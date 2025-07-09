import 'package:flutter/material.dart';
import 'capsule_preview_carousel.dart';
import 'emoji_dance_animator.dart';

class FeatureShowcaseScreen extends StatelessWidget {
  const FeatureShowcaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🧱 Kisswaar Module Showcase')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text('🛍️ Capsule Preview'),
          CapsulePreviewCarousel(items: ['Beige Hoodie', 'Clean Sneakers', 'Neutral Cap']),
          const SizedBox(height: 20),
          const Text('💃 Emoji Dance Animation'),
          const EmojiDanceAnimator(emojis: ['🧢', '💃', '🔥']),
        ],
      ),
    );
  }
}
