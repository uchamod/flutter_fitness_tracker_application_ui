import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:fl_chart/fl_chart.dart';

//define the pie chart data
//data is define using piechartsectiondata widget it's the widget that use to define pie chart section data
class PieChartTableData {
  final List<PieChartSectionData> sectionData = [
    PieChartSectionData(
      color: kcChartGreen,
      showTitle: false,
      value: 30,
      radius: 30,
    ),
    PieChartSectionData(
      color: kcChartBlue,
      showTitle: false,
      value: 40,
      radius: 35,
    ),
    PieChartSectionData(
      color: kcChartlightGreen,
      showTitle: false,
      value: 20,
      radius: 26,
    ),
    PieChartSectionData(
      color: kcChartYellow,
      showTitle: false,
      value: 20,
      radius: 26,
    ),
  ];
}
