// 📛 Profile Name: routes.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/ai_assistant.dart';
import 'screens/product.dart';
import 'screens/cart.dart';
import 'screens/checkout.dart';
import 'screens/order_confirm.dart';
import 'screens/vendor_panel.dart';
import 'screens/admin_dashboard.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/assistant': (context) => const AiAssistantScreen(),
  '/product': (context) => const ProductScreen(),
  '/cart': (context) => const CartScreen(),
  '/checkout': (context) => const CheckoutScreen(),
  '/confirm': (context) => const OrderConfirmScreen(),
  '/vendor': (context) => const VendorPanelScreen(),
  '/admin': (context) => const AdminDashboardScreen(),
};
