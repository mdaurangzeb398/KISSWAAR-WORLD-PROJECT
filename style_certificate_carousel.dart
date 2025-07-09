import 'package:flutter/material.dart';

class StyleCertificateCarousel extends StatelessWidget {
  final List<Map<String, String>> certificates;
  const StyleCertificateCarousel({super.key, required this.certificates});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: certificates.length,
        itemBuilder: (_, index) {
          final cert = certificates[index];
          return Container(
            width: 140,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.amber[50],
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(Icons.verified, color: Colors.orange, size: 24),
                const SizedBox(height: 6),
                Text(cert['buyer']!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                Text(cert['badge']!, style: const TextStyle(fontSize: 12)),
              ],
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(width: 10),
      ),
    );
  }
}
