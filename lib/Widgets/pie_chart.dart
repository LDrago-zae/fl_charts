import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class PieChart extends StatelessWidget {
  const PieChart(PieChartData chartData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: PieChart(
          PieChartData(
            sections: getSections(),
            centerSpaceRadius: 50, // Adjusts the center empty space
            sectionsSpace: 2, // Space between sections
            startDegreeOffset: 270, // Adjusts rotation of the chart
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections() {
    return [
      PieChartSectionData(
        value: 40,
        color: Colors.blue,
        title: '40%',
        radius: 60,
        titleStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ];
  }
}
