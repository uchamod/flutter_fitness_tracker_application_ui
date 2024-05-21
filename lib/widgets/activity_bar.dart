import 'package:fitness_tracker_ui/data/activity_bar_data.dart';
import 'package:fitness_tracker_ui/model/activity_bar_model.dart';
import 'package:fitness_tracker_ui/responsive/responsive_devices.dart';
import 'package:fitness_tracker_ui/widgets/activity_card.dart';
import 'package:flutter/material.dart';

class ActivityBar extends StatefulWidget {
  const ActivityBar({super.key});

  @override
  State<ActivityBar> createState() => _ActivityBarState();
}

class _ActivityBarState extends State<ActivityBar> {
  List<ActivityBarModel> activityBarData = ActivityBarData().activities;
  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: activityBarData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile ? 2 : 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: isMobile ? 10 : 0,
        ),
        itemBuilder: (context, index) {
          ActivityBarModel activity = activityBarData[index];
          return ActivityCard(
              activityIcon: activity.activityIcon,
              value: activity.activityValue,
              activityName: activity.activity);
        },
      ),
    );
  }
}
