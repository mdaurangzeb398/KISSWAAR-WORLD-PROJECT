// 📛 Profile Name: lib/screens/ai_assistant.dart

import 'package:flutter/material.dart';

class AiAssistantScreen extends StatelessWidget {
  const AiAssistantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kisswaar AI Assistant 🤖'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            '🧠 Welcome to your Smart Assistant!',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            '💬 Ask me anything about products, orders, deals, vendors, or support.',
          ),
          SizedBox(height: 24),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Find best shoes under ₹999'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Track my recent order'),
          ),
          ListTile(
            leading: Icon(Icons.style),
            title: Text('Suggest trending fashion'),
          ),
          ListTile(
            leading: Icon(Icons.settings_suggest),
            title: Text('Help me return a product'),
          ),
        ],
      ),
    );
  }
}
