// 📛 Profile Name: password_reset.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('🔐 Reset Password')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Enter your email to receive a reset link', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 16),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('Send Reset Link'),
              onPressed: () {
                // TODO: Firebase Auth - sendPasswordResetEmail()
              },
            ),
          ],
        ),
      ),
    );
  }
}
