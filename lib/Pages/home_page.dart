import 'package:fl_chart/fl_chart.dart';
import 'package:fl_charts/Widgets/fl_line_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
        body: SizedBox.expand(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _chart1(),
              const SizedBox(width: 20,),
              _chart2(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chart1() {
    return const SizedBox(
      height: 300,
      width: 300,
      child: FlLineChart(
        data: [
          FlSpot(1, 1),
          FlSpot(2, 2),
          FlSpot(3, 3),
          FlSpot(4, 4),
          FlSpot(5, 5),
        ],
      ),
    );
  }
  Widget _chart2() {
    return const SizedBox(
      height: 300,
      width: 300,
      child: FlLineChart(
        data: [
          FlSpot(1, 10),
          FlSpot(2, 15),
          FlSpot(3, 25),
          FlSpot(4, 6),
          FlSpot(5, 18),
        ],
      ),
    );
  }
}
