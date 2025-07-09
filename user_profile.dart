// 📛 Profile Name: user_profile.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserProfileScreen extends StatelessWidget {
  final KisswaarUser user = KisswaarUser(
    id: 'U123',
    name: 'Md Aurangzeb',
    email: 'md@example.com',
    role: 'admin',
  );

  UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('👤 Profile')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 12),
            Text(user.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text(user.email),
            Text('🛠️ Role: ${user.role}'),
          ],
        ),
      ),
    );
  }
}
