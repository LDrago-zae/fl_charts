import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ScatterPlot extends StatelessWidget {
  const ScatterPlot({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Scatter Plot"),),
    body: Center(child: ScatterChart(
      ScatterChartData(
        scatterSpots: [
          ScatterSpot(3,3),
          ScatterSpot(4,4),
          ScatterSpot(5,5),
          ScatterSpot(6,6),
          ScatterSpot(7,7),
        ],
        minX: 0,
        maxX: 10,
        minY: 0,
        maxY: 10,
        borderData: FlBorderData(show: true),
        gridData: const FlGridData(show: true),
      ),
    ),
    ),
    );
  }
}