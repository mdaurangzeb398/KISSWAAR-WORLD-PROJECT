// 📛 Profile Name: review_rating_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';

class ReviewRatingScreen extends StatefulWidget {
  const ReviewRatingScreen({super.key});

  @override
  State<ReviewRatingScreen> createState() => _ReviewRatingScreenState();
}

class _ReviewRatingScreenState extends State<ReviewRatingScreen> {
  double rating = 0;
  final _reviewController = TextEditingController();

  void _submitReview() {
    final review = _reviewController.text;
    if (rating == 0 || review.isEmpty) return;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('✅ Review Submitted'),
        content: Text('Rating: $rating ⭐\n\n"$review"'),
        actions: [TextButton(child: const Text('OK'), onPressed: () => Navigator.pop(context))],
      ),
    );

    _reviewController.clear();
    setState(() => rating = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('⭐ Rate Your Purchase')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Select a rating:', style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(5, (index) {
                return IconButton(
                  icon: Icon(
                    Icons.star,
                    color: index < rating ? Colors.amber : Colors.grey,
                  ),
                  onPressed: () => setState(() => rating = index + 1.0),
                );
              }),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _reviewController,
              maxLines: 3,
              decoration: const InputDecoration(labelText: 'Your feedback', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.send),
              label: const Text('Submit Review'),
              onPressed: _submitReview,
            ),
          ],
        ),
      ),
    );
  }
}
