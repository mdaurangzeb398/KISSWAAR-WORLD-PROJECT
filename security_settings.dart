// 📛 Profile Name: security_settings.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔐 Security Settings')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SwitchListTile(
              title: const Text('Enable 2FA'),
              value: false,
              onChanged: (value) {
                // TODO: Implement toggle logic
              },
            ),
            SwitchListTile(
              title: const Text('Secure Login Alerts'),
              value: true,
              onChanged: (value) {
                // TODO: Implement alert logic
              },
            ),
            const ListTile(
              title: Text('Change Password'),
              trailing: Icon(Icons.chevron_right),
            ),
          ],
        ),
      ),
    );
  }
}
