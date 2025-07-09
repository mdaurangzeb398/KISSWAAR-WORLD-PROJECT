// 📛 Profile Name: razorpay_service.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:flutter/material.dart';

class RazorpayService {
  late Razorpay _razorpay;

  void init() {
    _razorpay = Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handleSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handleError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void openCheckout() {
    var options = {
      'key': 'YOUR_RAZORPAY_KEY',
      'amount': 99900, // in paise (₹999)
      'name': 'Kisswaar',
      'description': 'Kisswaar Signature Shoes',
      'prefill': {'contact': '9123456789', 'email': 'user@example.com'},
    };

    _razorpay.open(options);
  }

  void _handleSuccess(PaymentSuccessResponse response) {
    debugPrint('✅ Payment Successful: ${response.paymentId}');
  }

  void _handleError(PaymentFailureResponse response) {
    debugPrint('❌ Payment Failed: ${response.message}');
  }

  void _handleExternalWallet(ExternalWalletResponse response) {
    debugPrint('💼 External Wallet Used: ${response.walletName}');
  }

  void dispose() {
    _razorpay.clear();
  }
}
