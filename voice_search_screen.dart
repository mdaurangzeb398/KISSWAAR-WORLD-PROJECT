// 📛 Profile Name: voice_search_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class VoiceSearchScreen extends StatelessWidget {
  const VoiceSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎙️ Voice Search')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Tap the mic to speak your search query:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 40),
            IconButton(
              iconSize: 80,
              icon: const Icon(Icons.mic, color: Colors.redAccent),
              onPressed: () {
                // TODO: Integrate speech_to_text plugin
              },
            ),
            const SizedBox(height: 20),
            const Text('Example: “Show me hoodies under ₹1000”'),
            const Spacer(),
            ElevatedButton.icon(
              icon: const Icon(Icons.search),
              label: const Text('Search'),
              onPressed: () {
                // TODO: Connect recognized speech to search logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
