// 📛 Profile Name: admin_filters.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class AdminFiltersScreen extends StatelessWidget {
  const AdminFiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final filters = [
      '🧾 Filter Orders By Date',
      '🧑‍🤝‍🧑 Filter Users By Role',
      '🏷️ Filter Products By Category',
      '💰 Filter Payouts By Status',
      '📬 Filter Feedback By Rating',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🧮 Admin Filter Panel')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
          itemCount: filters.length,
          separatorBuilder: (_, __) => const Divider(),
          itemBuilder: (_, index) {
            return ListTile(
              leading: const Icon(Icons.filter_list),
              title: Text(filters[index]),
              trailing: const Icon(Icons.chevron_right),
            );
          },
        ),
      ),
    );
  }
}
