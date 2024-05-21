import 'package:fitness_tracker_ui/model/bargraph_model.dart';
import 'package:fitness_tracker_ui/model/bargraph_spots.dart';
import 'package:fitness_tracker_ui/util/constants.dart';

//mannul data list for the bargraphs
class BarGraphData {
  List<BarGraphModel> barGraphData = [
    BarGraphModel(
      title: "Protien",
      graphColor: kcChartBlue,
      barGraphspots: [
        GraphSpots(x: 1, y: 3),
        GraphSpots(x: 2, y: 6),
        GraphSpots(x: 3, y: 8),
        GraphSpots(x: 4, y: 10),
        GraphSpots(x: 5, y: 2),
        GraphSpots(x: 6, y: 4),
        GraphSpots(x: 7, y: 6),
      ],
    ),
    BarGraphModel(
      title: "Calories burned",
      graphColor: kcChartpink,
      barGraphspots: [
        GraphSpots(x: 1, y: 2),
        GraphSpots(x: 2, y: 6),
        GraphSpots(x: 3, y: 8),
        GraphSpots(x: 4, y: 10),
        GraphSpots(x: 5, y: 3),
        GraphSpots(x: 6, y: 4),
        GraphSpots(x: 7, y: 7),
      ],
    ),
    BarGraphModel(
      title: "Carbs Intake",
      graphColor: kcChartGreen,
      barGraphspots: [
        GraphSpots(x: 1, y: 3),
        GraphSpots(x: 2, y: 1),
        GraphSpots(x: 3, y: 8),
        GraphSpots(x: 4, y: 5),
        GraphSpots(x: 5, y: 2),
        GraphSpots(x: 6, y: 4),
        GraphSpots(x: 7, y: 9),
      ],
    ),
  ];

  Map<int, String> bottomTitles = {
    1: "Mon",
    2: "Tue",
    3: "Wed",
    4: "Thu",
    5: "Fri",
    6: "Sat",
    7: "Sun",
  };
}
