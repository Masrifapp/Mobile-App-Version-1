import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  final double savings, loans, investments;
  const Chart(
      {Key? key,
      required this.savings,
      required this.loans,
      required this.investments})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double total = savings + investments + loans;

    final List<ChartData> chartData = [
      ChartData('Savings', ((savings / total) * 100).round(),
          const Color.fromRGBO(9, 0, 136, 1)),
      ChartData(
          'Investment', ((investments / total) * 100).round(), Colors.green),
      ChartData('Loans', ((loans / total) * 100).round(),
          const Color.fromRGBO(255, 189, 57, 1))
    ];

    return SfCircularChart(
        legend: Legend(
            isVisible: true,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
            // Legend will be placed at the left
            position: LegendPosition.bottom),
        series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartData, String>(
              dataSource: chartData,
              dataLabelSettings: const DataLabelSettings(
                  showCumulativeValues: true,
                  useSeriesColor: true,
                  isVisible: true,
                  textStyle:
                      TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
              pointColorMapper: (ChartData data, _) => data.color,
              xValueMapper: (ChartData data, _) => data.name,
              yValueMapper: (ChartData data, _) => data.amount,
              dataLabelMapper: ((datum, index) =>
                  '${(datum.amount)}%  ${datum.name}'))
        ]);
  }
}

class ChartData {
  ChartData(this.name, this.amount, this.color);
  final String name;
  final num amount;
  final Color color;
}
