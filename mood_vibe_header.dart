import 'package:flutter/material.dart';

class MoodVibeHeader extends StatelessWidget {
  final String vibeName;
  const MoodVibeHeader({super.key, required this.vibeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: vibeName == 'Dark Mode Pulse' ? Colors.black87 :
               vibeName == 'Urban Buzz' ? Colors.orange[100] :
               vibeName == 'Calm Minimal' ? Colors.blueGrey[50] :
               Colors.white,
      ),
      child: Row(
        children: [
          const Icon(Icons.vibration, size: 20),
          const SizedBox(width: 8),
          Text('Vibe: $vibeName', style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
