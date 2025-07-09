import 'package:flutter/material.dart';

class SeasonalBadgeBanner extends StatelessWidget {
  const SeasonalBadgeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final seasonalStars = [
      {
        'vendor': 'NeoThread Co.',
        'season': 'July Seller of the Month',
        'bannerImage': 'https://example.com/july-star.jpg',
      },
      {
        'vendor': 'FestiveWear India',
        'season': 'Diwali Top Seller',
        'bannerImage': 'https://example.com/diwali-banner.jpg',
      },
    ];

    return SizedBox(
      height: 160,
      child: PageView.builder(
        itemCount: seasonalStars.length,
        itemBuilder: (_, index) {
          final star = seasonalStars[index];
          return Stack(
            children: [
              Image.network(star['bannerImage'], width: double.infinity, fit: BoxFit.cover),
              Positioned(
                bottom: 10,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(8)),
                  child: Text('${star['vendor']} • ${star['season']}', style: const TextStyle(color: Colors.white)),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
