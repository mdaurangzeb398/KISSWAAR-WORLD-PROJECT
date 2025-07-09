// 📛 Profile Name: store_theme_selector.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class StoreThemeSelector extends StatelessWidget {
  const StoreThemeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final themes = [
      {'name': 'Classic White', 'color': Colors.white},
      {'name': 'Royal Blue', 'color': Colors.blue[200]},
      {'name': 'Dark Mode', 'color': Colors.grey[900]},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🎨 Customize Store Theme')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Choose Your Store Style:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            ...themes.map((theme) => Card(
                  color: theme['color'] as Color?,
                  child: ListTile(
                    title: Text(theme['name']!, style: const TextStyle(color: Colors.black)),
                    trailing: ElevatedButton(
                      child: const Text('Apply'),
                      onPressed: () {
                        // TODO: Save selected theme to vendor profile
                      },
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
