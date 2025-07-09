// 📛 Profile Name: user_role_manager.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class UserRoleManagerScreen extends StatelessWidget {
  const UserRoleManagerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      {'name': 'Amit Singh', 'email': 'amit@kisswaar.com', 'role': 'user', 'banned': false},
      {'name': 'Priya Das', 'email': 'priya@kisswaar.com', 'role': 'vendor', 'banned': false},
      {'name': 'Sam Mehra', 'email': 'sam@kisswaar.com', 'role': 'vendor', 'banned': true},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🛡️ User Role & Ban Manager')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (_, index) {
          final user = users[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('${user['name']} • ${user['role']}'),
            subtitle: Text(user['email']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.swap_horiz),
                  onPressed: () {
                    // TODO: Change role (user <-> vendor <-> admin)
                  },
                ),
                IconButton(
                  icon: Icon(
                    user['banned']! ? Icons.lock : Icons.lock_open,
                    color: user['banned']! ? Colors.red : Colors.green,
                  ),
                  onPressed: () {
                    // TODO: Toggle ban state
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
