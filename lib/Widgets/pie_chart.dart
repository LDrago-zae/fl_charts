import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartPage extends StatefulWidget {
  const PieChartPage({super.key});

  @override
  State<PieChartPage> createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Pie Chart'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: PieChart(
            PieChartData(
              sections: getSections(touchedIndex),
              centerSpaceRadius: 20,
              // Adjusts the center empty space
              sectionsSpace: 2,
              pieTouchData: PieTouchData(
                  touchCallback: (FlTouchEvent event, pieTouchResponse) {
                setState(() {
                  if (!event.isInterestedForInteractions ||
                      pieTouchResponse == null ||
                      pieTouchResponse.touchedSection == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                });
              }),
              startDegreeOffset: 270, // Adjusts rotation of the chart
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> getSections(int touchedIndex) {
    // List of data to generate the PieChart sections
    List<Map<String, dynamic>> data = [
      {'value': 40, 'title': '40%', 'color': Colors.blue},
      {'value': 30, 'title': '30%', 'color': Colors.red},
      {'value': 20, 'title': '20%', 'color': Colors.green},
      {'value': 10, 'title': '10%', 'color': Colors.yellow},
    ];

    // Generate and return the list of PieChartSectionData
    return List<PieChartSectionData>.generate(data.length, (i) {
      final isTouched = i == touchedIndex;
      return PieChartSectionData(
        value: data[i]['value'],
        title: data[i]['title'],
        color: data[i]['color'],
        radius: isTouched ? 110.0 : 100.0,
        titleStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        badgePositionPercentageOffset: 0.5,
      );
    });
  }
}
