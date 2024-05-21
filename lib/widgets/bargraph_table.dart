import 'dart:ui';

import 'package:fitness_tracker_ui/data/bargraph_data.dart';
import 'package:fitness_tracker_ui/model/bargraph_model.dart';
import 'package:fitness_tracker_ui/model/bargraph_spots.dart';
import 'package:fitness_tracker_ui/responsive/responsive_devices.dart';
import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

//implemanting the bargraph
class BarGraphTable extends StatefulWidget {
  const BarGraphTable({super.key});

  @override
  State<BarGraphTable> createState() => _BarGraphTableState();
}

class _BarGraphTableState extends State<BarGraphTable> {
  //assign the data
  List<BarGraphModel> graphData = BarGraphData().barGraphData;
  Map<int, String> weekdays = BarGraphData().bottomTitles;
  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);
    //implemanting the grid wive for the bargraphs
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: graphData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // childAspectRatio: 5 / 5,
      ),
      itemBuilder: (context, index) {
        //define the data object
        BarGraphModel graphModel = graphData[index];
        return Container(
          decoration: BoxDecoration(
            color: kccardBlackColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  graphModel.title,
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: kcSubTextColor),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                //implemant the barchart here use a coustom function for the implemant the each line of the bar chart
                Expanded(
                  child: BarChart(
                    BarChartData(
                      borderData: FlBorderData(show: false),
                      barGroups: _coustomBar(
                          color: graphModel.graphColor,
                          points: graphModel.barGraphspots),
                      titlesData: FlTitlesData(
                        // ignore: prefer_const_constructors
                        leftTitles: AxisTitles(
                          sideTitles: const SideTitles(showTitles: false),
                        ),
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        //set the bottom titles
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            //title show function
                            getTitlesWidget: (double value, TitleMeta meta) {
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  weekdays[value.toInt()].toString(),
                                  style: TextStyle(
                                      color: kcSubTextColor, fontSize: 10),
                                ),
                              );
                              //: const SizedBox();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  //function for implemant the bar lines this return the BarChartGroupData
  List<BarChartGroupData> _coustomBar(
      //define the erquied parameters
      {required Color color,
      required List<GraphSpots> points}) {
    //implemant the lines using maping
    return points
        .map(
          (point) => BarChartGroupData(
              x: point.x.toInt(), //set the x-axis point

              //implemant the barrod
              barRods: [
                BarChartRodData(
                  toY: point.y,
                  width: 12,
                  color: color.withOpacity(point.y > 5 ? 1 : 0.5),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(2),
                    topRight: Radius.circular(2),
                  ),
                ),
              ]),
        )
        .toList();
  }
}
