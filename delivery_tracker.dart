// 📛 Profile Name: delivery_tracker.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class DeliveryTrackerScreen extends StatelessWidget {
  const DeliveryTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stages = ['Order Received', 'Packed', 'Shipped', 'Out for Delivery', 'Delivered'];

    return Scaffold(
      appBar: AppBar(title: const Text('🚚 Delivery Status')),
      body: ListView.builder(
        itemCount: stages.length,
        itemBuilder: (context, index) {
          final isCompleted = index <= 3; // simulate current stage
          return ListTile(
            leading: Icon(
              isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
              color: isCompleted ? Colors.green : Colors.grey,
            ),
            title: Text(stages[index]),
          );
        },
      ),
    );
  }
}
