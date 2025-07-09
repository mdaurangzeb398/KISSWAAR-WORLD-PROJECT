// 📛 Profile Name: return_request_manager.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ReturnRequestManager extends StatelessWidget {
  const ReturnRequestManager({super.key});

  @override
  Widget build(BuildContext context) {
    final requests = [
      {'orderId': '#OD1234', 'reason': 'Size mismatch', 'status': 'Pending'},
      {'orderId': '#OD1235', 'reason': 'Defective item', 'status': 'Approved'},
      {'orderId': '#OD1236', 'reason': 'Changed mind', 'status': 'Rejected'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('🔁 Return Requests')),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (_, index) {
          final req = requests[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.undo),
              title: Text('Order: ${req['orderId']}'),
              subtitle: Text('Reason: ${req['reason']}'),
              trailing: DropdownButton<String>(
                value: req['status'],
                items: ['Pending', 'Approved', 'Rejected']
                    .map((val) => DropdownMenuItem(value: val, child: Text(val)))
                    .toList(),
                onChanged: (newVal) {
                  // TODO: Update status in Firestore
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
