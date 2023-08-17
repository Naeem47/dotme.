import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class GraphSecion extends StatelessWidget {
  const GraphSecion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
            text: 'Umsätze',
            fontsize: 25,
            fontweight: FontWeight.w900,
            fontcolor: Colors.black),

        25.verticalSpace,

        Row(
          children: List.generate(5, (index) {
            return Container(
              margin: const EdgeInsets.only(left: 10),
              height: 64,
              width: 94,
              decoration: BoxDecoration(
                  color: Color(0xffF3F3F3),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'Heute',
                        fontsize: 12,
                        fontweight: FontWeight.w500,
                        fontcolor: Colors.black,
                      ),
                      2.verticalSpace,
                      MyText(
                        text: '1992,23€',
                        fontsize: 16,
                        fontweight: FontWeight.w900,
                        fontcolor: Colors.black,
                      )
                    ]),
              ),
            );
          }),
        ),
        15.verticalSpace,

        Container(
          margin: const EdgeInsets.only(left: 3),
          height: 260,
          width: 570,
          decoration: BoxDecoration(
              color: Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(10)),
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 10,
              minY: 0,
              maxY: 10,
              backgroundColor: Color(0xffF3F3F3),
              borderData:
                  FlBorderData(border: Border.all(color: Colors.transparent)),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 0),
                    const FlSpot(1, 2),
                    const FlSpot(2, 4),
                    const FlSpot(3, 6.2),
                    const FlSpot(4, 6),
                    const FlSpot(5, 8),
                    const FlSpot(6, 9),
                    const FlSpot(7, 7),
                    const FlSpot(8, 6),
                    const FlSpot(9, 7.8),
                    const FlSpot(10, 8),
                  ],
                  isCurved: true,
                  gradient: const LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.pink,
                    ],
                  ),
                  barWidth: 3,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.blueGrey.withOpacity(0.2),
                      ],
                    ),
                  ),
                  dotData: FlDotData(show: false),
                ),
              ],
              gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: false,
                  drawVerticalLine: false,
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: Colors.grey.shade100,
                      strokeWidth: 0.8,
                    );
                  }),
              titlesData: FlTitlesData(
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: true),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 12,
                      getTitlesWidget: (value, meta) {
                        String text = '';
                        switch (value.toInt()) {
                          case 1:
                            text = "Jan";
                            break;
                          case 2:
                            text = "Feb";
                            break;
                          case 3:
                            text = "Mar";
                            break;
                          case 4:
                            text = "Apl";
                            break;
                          case 5:
                            text = "May";
                            break;
                          case 6:
                            text = "Jun";
                            break;
                          case 7:
                            text = "Jul";
                            break;
                          case 8:
                            text = "Aug";
                            break;
                          case 9:
                            text = "Sep";
                            break;
                          case 10:
                            text = "Nev";
                            break;
                          default:
                            return Container();
                        }
                        return Text(
                          text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        );
                      }),
                ),
              ),
            ),
          ),
        ),
       
        15.verticalSpace,
        Container(
          margin: const EdgeInsets.only(left: 3),
          height: 260,
          width: 570,
          decoration: BoxDecoration(
              color: Color(0xffF3F3F3),
              borderRadius: BorderRadius.circular(10)),
          child: LineChart(
            LineChartData(
              minX: 0,
              maxX: 10,
              minY: 0,
              maxY: 10,
              backgroundColor: Color(0xffF3F3F3),
              borderData:
                  FlBorderData(border: Border.all(color: Colors.transparent)),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    const FlSpot(0, 0),
                    const FlSpot(1, 2),
                    const FlSpot(2, 4),
                    const FlSpot(3, 6.2),
                    const FlSpot(4, 6),
                    const FlSpot(5, 8),
                    const FlSpot(6, 9),
                    const FlSpot(7, 7),
                    const FlSpot(8, 6),
                    const FlSpot(9, 7.8),
                    const FlSpot(10, 8),
                  ],
                  isCurved: true,
                  gradient: const LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.pink,
                    ],
                  ),
                  barWidth: 3,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.blueGrey.withOpacity(0.2),
                      ],
                    ),
                  ),
                  dotData: FlDotData(show: false),
                ),
              ],
              gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: false,
                  drawVerticalLine: false,
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: Colors.grey.shade100,
                      strokeWidth: 0.8,
                    );
                  }),
              titlesData: FlTitlesData(
                leftTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: true),
                ),
                rightTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                topTitles: const AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 12,
                      getTitlesWidget: (value, meta) {
                        String text = '';
                        switch (value.toInt()) {
                          case 1:
                            text = "Jan";
                            break;
                          case 2:
                            text = "Feb";
                            break;
                          case 3:
                            text = "Mar";
                            break;
                          case 4:
                            text = "Apl";
                            break;
                          case 5:
                            text = "May";
                            break;
                          case 6:
                            text = "Jun";
                            break;
                          case 7:
                            text = "Jul";
                            break;
                          case 8:
                            text = "Aug";
                            break;
                          case 9:
                            text = "Sep";
                            break;
                          case 10:
                            text = "Nev";
                            break;
                          default:
                            return Container();
                        }
                        return Text(
                          text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                        );
                      }),
                ),
              ),
            ),
          ),
        ),
        // ),
        // Container(
        //   height: 200,
        //   width: 550,
        //   color: Colors.pink.shade100,
        // ),

        // Expanded(
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: 5,
        //     itemBuilder: (context,index){
        //       return Row(
        //         mainAxisSize: MainAxisSize.min,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         children: [
        //           Container(
        //             margin:const EdgeInsets.only(right: 10),
        //             height: 64,
        //             width: 103,
        //             decoration: BoxDecoration(color: Color(0xffF3F3F3),
        //             borderRadius: BorderRadius.circular(10)),
        //             child: Column(children: [
        //                         MyText(text: 'Umsätze',fontsize: 12,fontweight: FontWeight.w500,fontcolor: Colors.black),
        //                         5.verticalSpace,
        //                                                     MyText(text: 'Umsätze',fontsize: 16,fontweight: FontWeight.w900,fontcolor: Colors.black),

        //             ]),
        //           ),
        //         ],
        //       );

        //   }),
        // ),
      ],
    );
  }
}
