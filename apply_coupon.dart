// 📛 Profile Name: apply_coupon.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ApplyCouponScreen extends StatefulWidget {
  const ApplyCouponScreen({super.key});

  @override
  State<ApplyCouponScreen> createState() => _ApplyCouponScreenState();
}

class _ApplyCouponScreenState extends State<ApplyCouponScreen> {
  final _controller = TextEditingController();
  String _statusMessage = '';

  void _checkCoupon(String code) {
    if (code.toLowerCase() == 'kiss10') {
      setState(() {
        _statusMessage = '✅ Coupon Applied! 10% Discount Activated.';
      });
    } else {
      setState(() {
        _statusMessage = '❌ Invalid Coupon Code.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🏷️ Apply Coupon')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter Coupon Code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              icon: const Icon(Icons.redeem),
              label: const Text('Apply'),
              onPressed: () => _checkCoupon(_controller.text),
            ),
            const SizedBox(height: 16),
            Text(_statusMessage, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
