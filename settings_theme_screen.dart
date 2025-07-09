// 📛 Profile Name: settings_theme_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class SettingsThemeScreen extends StatefulWidget {
  const SettingsThemeScreen({super.key});

  @override
  State<SettingsThemeScreen> createState() => _SettingsThemeScreenState();
}

class _SettingsThemeScreenState extends State<SettingsThemeScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🌓 Theme Settings')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Enable Dark Mode', style: TextStyle(fontSize: 16)),
            Switch(
              value: isDarkMode,
              onChanged: (val) {
                setState(() => isDarkMode = val);
                // TODO: Trigger theme provider or state management update
              },
            ),
          ],
        ),
      ),
    );
  }
}
