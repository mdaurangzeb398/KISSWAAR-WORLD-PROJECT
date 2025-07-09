import 'package:flutter/material.dart';

class BadgeFilterHomeWidget extends StatefulWidget {
  const BadgeFilterHomeWidget({super.key});

  @override
  State<BadgeFilterHomeWidget> createState() => _BadgeFilterHomeWidgetState();
}

class _BadgeFilterHomeWidgetState extends State<BadgeFilterHomeWidget> {
  final badges = ['🔥 Top Seller', '🚀 Fast Shipper', '💎 Premium Rated', '🛍️ Active Vendor'];
  String? selected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: badges.length,
        itemBuilder: (_, index) {
          final badge = badges[index];
          final isActive = selected == badge;
          return GestureDetector(
            onTap: () => setState(() => selected = badge),
            child: Chip(
              label: Text(badge),
              backgroundColor: isActive ? Colors.blueAccent : Colors.grey[300],
              labelStyle: TextStyle(color: isActive ? Colors.white : Colors.black),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 8),
      ),
    );
  }
}
