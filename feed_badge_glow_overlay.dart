import 'package:flutter/material.dart';

class FeedBadgeGlowOverlay extends StatelessWidget {
  final String productName;
  final String badge;

  const FeedBadgeGlowOverlay({super.key, required this.productName, required this.badge});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.orangeAccent.withOpacity(0.6),
                blurRadius: 12,
                spreadRadius: 4,
              ),
            ],
          ),
          width: double.infinity,
          height: 80,
        ),
        Container(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              const Icon(Icons.stars, color: Colors.orangeAccent),
              const SizedBox(width: 8),
              Text(productName, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const Spacer(),
              Text(badge, style: const TextStyle(color: Colors.orangeAccent)),
            ],
          ),
        ),
      ],
    );
  }
}
