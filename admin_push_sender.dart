// 📛 Profile Name: admin_push_sender.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class AdminPushSenderScreen extends StatelessWidget {
  const AdminPushSenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _titleController = TextEditingController();
    final _bodyController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('📣 Send Notification')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: _titleController, decoration: const InputDecoration(labelText: 'Title')),
            const SizedBox(height: 12),
            TextField(controller: _bodyController, decoration: const InputDecoration(labelText: 'Body')),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('Send'),
              onPressed: () {
                // TODO: Firebase messaging send logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
