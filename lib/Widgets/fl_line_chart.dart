import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlLineChart extends StatelessWidget {
  final List<FlSpot> data;

  const FlLineChart({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: LineChart(
            LineChartData(
              gridData: _gridLineChartData(),
              borderData: _borderData(),
              lineBarsData: [
                _lineChartBarData(),
              ],
              titlesData: _flTitlesData(),
            ),
          ),
        ),
      ),
    );
  }

  FlTitlesData _flTitlesData() {
    return FlTitlesData(
      show: true,
      rightTitles: const AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
      leftTitles: const AxisTitles(
        sideTitles: SideTitles(
          maxIncluded: true,
          minIncluded: false,
          showTitles: true,
          reservedSize: 30,
        ),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          maxIncluded: false,
          minIncluded: false,
          getTitlesWidget: (value, meta) {
            return Text("Day ${value.toInt()}");
          }
        ),
      ),
      topTitles: const AxisTitles(
        sideTitles: SideTitles(
          showTitles: false,
        ),
      ),
    );
  }

  FlBorderData _borderData() {
    return FlBorderData(
        show: true,
        border: Border.all(
          color: Colors.black,
        ));
  }

  FlGridData _gridLineChartData() {
    return const FlGridData(
      show: true,
      drawHorizontalLine: true,
      drawVerticalLine: true,
    );
  }

  LineChartBarData _lineChartBarData() {
    return LineChartBarData(
      spots: data,
      isCurved: true,
      barWidth: 2,
      color: Colors.black,
      belowBarData: BarAreaData(
        show: true,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlueAccent,
            Colors.pinkAccent,
          ],
        ),
      ),
    );
  }
}
