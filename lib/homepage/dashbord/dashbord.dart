import 'package:fitness_tracker_ui/widgets/activity_bar.dart';
import 'package:fitness_tracker_ui/widgets/bargraph_table.dart';
import 'package:fitness_tracker_ui/widgets/linechart_table.dart';
import 'package:fitness_tracker_ui/widgets/serch_bar.dart';
import 'package:flutter/material.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({super.key});

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //implement serch bar
            SerchBar(),
            SizedBox(
              height: 15,
            ),
            //implemant activity boxes
            ActivityBar(),
            SizedBox(
              height: 15,
            ),
            //implemant main line graph
            LineChartTable(),
            SizedBox(
              height: 20,
            ),
            //implemant bargraphs
            BarGraphTable(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
