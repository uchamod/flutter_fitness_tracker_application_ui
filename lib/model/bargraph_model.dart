import 'package:fitness_tracker_ui/model/bargraph_spots.dart';
import 'package:flutter/cupertino.dart';

//data model for the bargraphs
class BarGraphModel {
  final String title;
  final Color graphColor;
  final List<GraphSpots> barGraphspots;

  BarGraphModel(
      {required this.title,
      required this.graphColor,
      required this.barGraphspots});
}
