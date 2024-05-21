import 'package:fitness_tracker_ui/data/line_chart_data.dart';
import 'package:fitness_tracker_ui/util/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LineChartTable extends StatelessWidget {
  const LineChartTable({super.key});

  @override
  Widget build(BuildContext context) {
    final data = MainChartData();
    return Container(
      color: kccardBlackColor,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "steps Overviwe",
              style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kcSubTextColor),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //implemantation of the line chart
            //aspect ratio definr the chart area
            AspectRatio(
              aspectRatio: 16 / 7,
              child: LineChart(
                LineChartData(
                  borderData:
                      FlBorderData(show: false), //remove the line border
                  lineTouchData: const LineTouchData(
                    //dislpay the data when line touch
                    handleBuiltInTouches: true,
                  ),

                  //set the title data
                  titlesData: FlTitlesData(
                    //remove the right titls
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    //remove the top titles
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    //add bottom titles
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.bottomTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.bottomTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                        color: kcSubTextColor, fontSize: 10),
                                  ),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),

                    //add elft tile data

                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        interval: 1,
                        reservedSize: 30,
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.leftTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.leftTitle[value.toInt()].toString(),
                                    style: TextStyle(
                                        color: kcSubTextColor, fontSize: 10),
                                  ),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                  ),
                  //set the line chart data
                  lineBarsData: [
                    LineChartBarData(
                      isStrokeJoinRound: true,
                      curveSmoothness: 6,
                      color: kcChartpink, //border color
                      barWidth: 2, //border width
                      belowBarData: BarAreaData(
                        //set the bar data
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            kcChartpink.withOpacity(0.6),
                            Colors.transparent
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      dotData: const FlDotData(show: false),
                      spots: data.spots,
                    ),
                  ],
                  //set the graph cordinate limits
                  minX: 0,
                  minY: 0,
                  maxX: 120,
                  maxY: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
