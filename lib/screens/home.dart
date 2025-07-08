// 📛 Profile Name: lib/screens/home.dart

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Kisswaar 💘',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          Text(
            'Welcome to Kisswaar World Project 💚',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          Text(
            '🛍️ Your one-stop AI-powered ecommerce platform with smart dropshipping, vendor sync, and automated UI.',
          ),
          SizedBox(height: 24),
          Text(
            '🚀 Features:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          FeatureTile('🔥 AI Assistant for recommendations'),
          FeatureTile('📦 Live Order Tracking'),
          FeatureTile('🧠 Mood-based Product Feed'),
          FeatureTile('🔗 Connect Dropshipping Vendor'),
        ],
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final String title;
  const FeatureTile(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.check_circle_outline, color: Colors.green),
      title: Text(title),
    );
  }
}
