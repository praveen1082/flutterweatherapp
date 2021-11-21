import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: LineChart(
        LineChartData(borderData: FlBorderData(show: false), lineBarsData: [
          LineChartBarData(spots: [
            FlSpot(0, 1),
            FlSpot(1, 3),
            FlSpot(2, 10),
            FlSpot(3, 7),
            FlSpot(4, 12),
            FlSpot(5, 13),
            FlSpot(6, 17),
            FlSpot(7, 15),
            FlSpot(8, 20)
          ])
        ]),
      ),
    );
  }
}
