import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class VendorPerformanceScreen extends StatelessWidget {
  const VendorPerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scores = [802, 851, 891, 923, 981]; // Weekly score history

    return Scaffold(
      appBar: AppBar(title: const Text('📊 Seller Performance')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Performance Score (Last 5 Weeks)', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(show: true),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(scores.length, (i) => FlSpot(i.toDouble(), scores[i].toDouble())),
                      isCurved: true,
                      dotData: FlDotData(show: true),
                      colors: [Colors.green],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('Your badge progression is on FIRE! 🔥', style: TextStyle(color: Colors.orange)),
          ],
        ),
      ),
    );
  }
}
