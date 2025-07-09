import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BuyerCategoryInsightScreen extends StatelessWidget {
  const BuyerCategoryInsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryData = {
      'Hoodies': 12,
      'Sneakers': 7,
      'Socks': 4,
      'Caps': 5,
      'Jackets': 8,
    };

    return Scaffold(
      appBar: AppBar(title: const Text('🧭 Your Style Map')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Category-Wise Orders', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: PieChart(
                PieChartData(
                  sections: categoryData.entries.map((e) {
                    return PieChartSectionData(
                      title: '${e.key}: ${e.value}',
                      value: e.value.toDouble(),
                      color: Colors.primaries[categoryData.keys.toList().indexOf(e.key) % Colors.primaries.length],
                      radius: 60,
                    );
                  }).toList(),
                  sectionsSpace: 4,
                  centerSpaceRadius: 30,
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('🎉 Your top category is Hoodies — coupon incoming soon!')
          ],
        ),
      ),
    );
  }
}
