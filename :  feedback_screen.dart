// 📛 Profile Name: feedback_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final _controller = TextEditingController();

  void _submitFeedback() {
    final feedback = _controller.text;
    if (feedback.isEmpty) return;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('🙏 Thank You!'),
        content: Text('Your feedback:\n\n$feedback'),
        actions: [TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK'))],
      ),
    );

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('💬 Feedback')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('We’d love to hear your thoughts!', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            TextField(
              controller: _controller,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Write your feedback...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('Submit'),
              onPressed: _submitFeedback,
            ),
          ],
        ),
      ),
    );
  }
}
