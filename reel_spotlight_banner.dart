import 'package:flutter/material.dart';

class ReelSpotlightBanner extends StatelessWidget {
  final String buyerName;
  final String momentTitle;
  final String badge;
  final String imageUrl;

  const ReelSpotlightBanner({
    super.key,
    required this.buyerName,
    required this.momentTitle,
    required this.badge,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Image.network(imageUrl, width: double.infinity, height: 160, fit: BoxFit.cover),
          Container(
            height: 160,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black87, Colors.transparent], begin: Alignment.bottomCenter, end: Alignment.topCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$momentTitle', style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  Text('$buyerName • $badge', style: const TextStyle(color: Colors.white70, fontSize: 14)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
