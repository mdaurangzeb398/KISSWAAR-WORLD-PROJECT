import 'package:flutter/material.dart';

class BuyerSpotlightReelWidget extends StatelessWidget {
  final List<Map<String, String>> moments;
  const BuyerSpotlightReelWidget({super.key, required this.moments});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: PageView.builder(
        itemCount: moments.length,
        itemBuilder: (_, index) {
          final moment = moments[index];
          return Card(
            margin: const EdgeInsets.all(12),
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple.shade100, Colors.white]),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(moment['title']!, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(moment['desc']!, style: const TextStyle(fontSize: 14)),
                  const SizedBox(height: 8),
                  Text('🏅 ${moment['badge']}', style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
