// 📛 Profile Name: language_toggle_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class LanguageToggleScreen extends StatefulWidget {
  const LanguageToggleScreen({super.key});

  @override
  State<LanguageToggleScreen> createState() => _LanguageToggleScreenState();
}

class _LanguageToggleScreenState extends State<LanguageToggleScreen> {
  String selectedLanguage = 'English';

  final languages = ['English', 'हिन्दी', 'বাংলা', 'اردو', 'عربي'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🌐 Language Settings')),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (_, index) {
          final lang = languages[index];
          final isSelected = lang == selectedLanguage;

          return ListTile(
            leading: const Icon(Icons.language),
            title: Text(lang),
            trailing: isSelected ? const Icon(Icons.check_circle, color: Colors.green) : null,
            onTap: () {
              setState(() => selectedLanguage = lang);
              // TODO: Apply locale change globally
            },
          );
        },
      ),
    );
  }
}
