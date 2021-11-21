import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  ChartWidget({Key? key}) : super(key: key);
  List days = [
    "Nov 12",
    "Nov 12",
    "Nov 12",
    "Nov 12",
    "Nov 12",
    "Nov 12",
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          titlesData: FlTitlesData(
            //bottomTitles: SideTitles(showTitles: false),
            // leftTitles: SideTitles(showTitles: false),
            rightTitles: SideTitles(showTitles: false),
            topTitles: SideTitles(showTitles: false),
          ),
          lineTouchData: LineTouchData(enabled: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(colors: [
              Colors.black,
            ], spots: [
              FlSpot(0, 2),
              FlSpot(1, 1),
              FlSpot(2, 2),
              FlSpot(3, 0),
              FlSpot(4, 1),
              FlSpot(5, 2),
              FlSpot(6, 1)
            ])
          ]),
    );
  }
}
