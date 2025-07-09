import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BuyerJourneyGraphScreen extends StatelessWidget {
  const BuyerJourneyGraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersOverTime = [1, 4, 7, 11, 19, 27, 35]; // Monthly progress
    final monthLabels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

    return Scaffold(
      appBar: AppBar(title: const Text('📈 Your Shopping Journey')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text('Orders Over Time', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, _) => Text(monthLabels[value.toInt()]),
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(ordersOverTime.length, (i) => FlSpot(i.toDouble(), ordersOverTime[i].toDouble())),
                      isCurved: true,
                      dotData: FlDotData(show: true),
                      colors: [Colors.purple],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('🎯 You’re a top buyer — next coupon unlock in 5 orders!')
          ],
        ),
      ),
    );
  }
}
