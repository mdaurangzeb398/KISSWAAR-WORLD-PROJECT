import 'package:flutter/material.dart';

class SellerMilestonePanel extends StatelessWidget {
  const SellerMilestonePanel({super.key});

  @override
  Widget build(BuildContext context) {
    final milestones = [
      {'title': '100+ Orders', 'achieved': true},
      {'title': 'Top Seller Badge', 'achieved': true},
      {'title': 'Platinum Tier', 'achieved': false},
      {'title': 'Homepage Banner Feature', 'achieved': false},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🎯 Seller Milestones')),
      body: ListView(
        children: milestones.map((m) {
          return ListTile(
            leading: Icon(m['achieved']! ? Icons.check_circle : Icons.radio_button_unchecked, color: m['achieved']! ? Colors.green : Colors.grey),
            title: Text(m['title']!),
            trailing: m['achieved']! ? const Text('✅ Done') : const Text('🚀 In Progress'),
          );
        }).toList(),
      ),
    );
  }
}
