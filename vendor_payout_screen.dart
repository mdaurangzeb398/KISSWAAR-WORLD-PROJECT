// 📛 Profile Name: vendor_payout_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import '../models/payout_model.dart';

class VendorPayoutScreen extends StatelessWidget {
  final List<Payout> payouts = [
    Payout(vendorId: 'V001', vendorName: 'StyleKart', amount: 4220, status: 'paid'),
    Payout(vendorId: 'V002', vendorName: 'RoyalTrendz', amount: 1890, status: 'pending'),
  ];

  VendorPayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('💸 Vendor Payouts')),
      body: ListView.builder(
        itemCount: payouts.length,
        itemBuilder: (_, index) {
          final payout = payouts[index];
          return ListTile(
            leading: Icon(
              payout.status == 'paid' ? Icons.check_circle : Icons.hourglass_bottom,
              color: payout.status == 'paid' ? Colors.green : Colors.orange,
            ),
            title: Text('${payout.vendorName} • ₹${payout.amount}'),
            subtitle: Text('Status: ${payout.status}'),
          );
        },
      ),
    );
  }
}
