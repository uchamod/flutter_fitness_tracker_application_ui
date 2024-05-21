import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:fitness_tracker_ui/widgets/piechart_table.dart';
import 'package:fitness_tracker_ui/widgets/schedule_card.dart';
import 'package:fitness_tracker_ui/widgets/summary_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

//implemanting the summary widget
class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kccardBlackColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //crate a widget for the pie chart
            const PieChartTable(),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Summary",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: kcMainTextColor, fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SummaryCard(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Schedule",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: kcMainTextColor, fontSize: 18),
            ),
            const SizedBox(
              height: 12,
            ),
            const ScheduleCard(title: "Helth yoga", daytime: "Today,10am-11am"),
            const SizedBox(
              height: 12,
            ),
            const ScheduleCard(title: "Pilates", daytime: "Tommorow,8am-9am"),
            const SizedBox(
              height: 12,
            ),
            const ScheduleCard(title: "Helth yoga", daytime: "Today,10am-11am"),
          ],
        ),
      ),
    );
  }
}
