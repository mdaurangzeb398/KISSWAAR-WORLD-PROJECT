// 📛 Profile Name: analytics_screen.dart
// ✅ Copy this profile name in GitHub file creation form

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📈 Kisswaar Analytics')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: LineChart(
          LineChartData(
            titlesData: FlTitlesData(show: true),
            borderData: FlBorderData(show: true),
            lineBarsData: [
              LineChartBarData(
                isCurved: true,
                colors: [Colors.green],
                spots: const [
                  FlSpot(0, 2),
                  FlSpot(1, 4),
                  FlSpot(2, 6),
                  FlSpot(3, 8),
                  FlSpot(4, 7),
                  FlSpot(5, 9),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
