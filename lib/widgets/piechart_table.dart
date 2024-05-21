import 'package:fitness_tracker_ui/data/piechart_data.dart';
import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PieChartTable extends StatefulWidget {
  const PieChartTable({super.key});

  @override
  State<PieChartTable> createState() => _PieChartTableState();
}

//implemanting the pie chart widget
class _PieChartTableState extends State<PieChartTable> {
  final List<PieChartSectionData> pieChartData =
      PieChartTableData().sectionData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      //  width: 250,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0, //space between each section
              centerSpaceRadius: 80, //space from the center
              sections: pieChartData, //sections
              startDegreeOffset: -90,
            ),
          ),
          Positioned.fill(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "70%",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: kcMainTextColor, fontSize: 40, height: 0.75),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "of 100%",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: kcSubTextColor, fontSize: 15),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
