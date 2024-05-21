import 'package:fitness_tracker_ui/model/activity_bar_model.dart';

//datalist for the activity bar
class ActivityBarData {
  List<ActivityBarModel> activities = [
    ActivityBarModel(
        activityIcon: "assets/images/flame_426833.png",
        activityValue: "230",
        activity: "water level"),
    ActivityBarModel(
        activityIcon: "assets/images/fish.png",
        activityValue: "1234m",
        activity: "milesteps"),
    ActivityBarModel(
        activityIcon: "assets/images/location.png",
        activityValue: "1233m",
        activity: "coverd distance"),
    ActivityBarModel(
        activityIcon: "assets/images/helth.png",
        activityValue: "7h 43m",
        activity: "sleep"),
  ];
}
