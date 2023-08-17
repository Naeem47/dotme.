import 'package:dot_me/View/Screen/HomeScreen/SocailMeScreen.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Utils/Widgets/box.dart';
import '../Utils/Widgets/box2.dart';
import '../Utils/dummayfiles.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(children: [
          const Header(title: 'Deine Chats'),
          const Divider(
            color: Color(0xffEFF1F3),
            thickness: 2,
          ),
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 700,
                  width: 300,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Deine Konten',
                            fontsize: 25,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.black,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 310,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Colors.grey.shade800,
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 40,
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    height: 108,
                                    width: 310,
                                    child: Column(
                                      children: [
                                        Image.asset('assets/upvector.png'),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  right: 40,
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    height: 108,
                                    width: 310,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/downvector.png'),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Current Balance',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 13,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '\$4,570,80',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 31,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '5294 2436 4780 2468',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 5,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 30, top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Name',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    'Itai Bracha',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'GULTIG BIS',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "07/25",
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'CVV',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    '332',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // Visa
                                Positioned(
                                    top: 28,
                                    left: 225,
                                    child: Container(
                                      child: MyText(
                                        text: 'visa',
                                        fontsize: 25,
                                        fontweight: FontWeight.w900,
                                        fontcolor: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // second card
                          Container(
                            width: 310,
                            height: 180,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                colors: [
                                  Colors.blue.shade400,
                                  Colors.purple.shade100,
                                ],
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 40,
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    height: 108,
                                    width: 310,
                                    child: Column(
                                      children: [
                                        Image.asset('assets/upvector.png'),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  right: 40,
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    height: 108,
                                    width: 310,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Image.asset('assets/downvector.png'),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 180,
                                  width: 310,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Current Balance',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 13,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '\$4,570,80',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 31,
                                              fontWeight: FontWeight.w900,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          '5294 2436 4780 2468',
                                          style: GoogleFonts.urbanist(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 5,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 30, top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Name',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    'Itai Bracha',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'GULTIG BIS',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    "07/25",
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'CVV',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                  Text(
                                                    '332',
                                                    style: GoogleFonts.urbanist(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        letterSpacing: 0,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                // Visa
                                Positioned(
                                    top: 28,
                                    left: 225,
                                    child: Container(
                                      child: MyText(
                                        text: 'visa',
                                        fontsize: 25,
                                        fontweight: FontWeight.w900,
                                        fontcolor: Colors.white,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          DottedBorder(
                            color: Colors.black,
                            strokeWidth: 1.5,
                            dashPattern: [10, 6],
                            child: Container(
                              width: 310,
                              height: 160,
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.add,
                                    ),
                                    MyText(text: "Add card"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                // chatroom
                Container(
                  height: 700,
                  width: 570,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Deine umsatze',
                          fontsize: 25,
                          fontweight: FontWeight.w900,
                          fontcolor: Colors.black,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(5, (index) => const Box()),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text: "Einnahmen",
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, top: 16),
                          height: 260,
                          width: 570,
                          // margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(10)),
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 10,
                              minY: 0,
                              maxY: 10,
                              backgroundColor: const Color(0xffF3F3F3),
                              borderData: FlBorderData(
                                  border:
                                      Border.all(color: Colors.transparent)),
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
                                      Colors.blue,
                                      Colors.blue,
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
                                  dotData: const FlDotData(show: false),
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
                                  sideTitles: SideTitles(
                                      showTitles: true,
                                      getTitlesWidget: (value, meta) {
                                        String text = '';
                                        switch (value.toInt()) {
                                          case 1:
                                            text = "600k";
                                            break;
                                          case 2:
                                            text = "600k";
                                            break;
                                          case 3:
                                            text = "600k";
                                            break;
                                          case 4:
                                            text = "600k";
                                            break;
                                          case 5:
                                            text = "600k";
                                            break;
                                          case 6:
                                            text = "600k";
                                            break;
                                          case 7:
                                            text = "600k";
                                            break;
                                          case 8:
                                            text = "600k";
                                            break;

                                          default:
                                            return Container();
                                        }
                                        return Text(
                                          text,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        );
                                      }),
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
                                      reservedSize: 15,
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
                                            fontSize: 8,
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        MyText(
                          text: "Ausgaben",
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 3, top: 16),
                          height: 260,
                          width: 570,
                          // margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: const Color(0xffF3F3F3),
                              borderRadius: BorderRadius.circular(10)),
                          child: LineChart(
                            LineChartData(
                              minX: 0,
                              maxX: 10,
                              minY: 0,
                              maxY: 10,
                              backgroundColor: const Color(0xffF3F3F3),
                              borderData: FlBorderData(
                                  border:
                                      Border.all(color: Colors.transparent)),
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
                                      Colors.blue,
                                      Colors.blue,
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
                                  dotData: const FlDotData(show: false),
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
                                  sideTitles: SideTitles(
                                      showTitles: true,
                                      getTitlesWidget: (value, meta) {
                                        String text = '';
                                        switch (value.toInt()) {
                                          case 1:
                                            text = "600k";
                                            break;
                                          case 2:
                                            text = "600k";
                                            break;
                                          case 3:
                                            text = "600k";
                                            break;
                                          case 4:
                                            text = "600k";
                                            break;
                                          case 5:
                                            text = "600k";
                                            break;
                                          case 6:
                                            text = "600k";
                                            break;
                                          case 7:
                                            text = "600k";
                                            break;
                                          case 8:
                                            text = "600k";
                                            break;

                                          default:
                                            return Container();
                                        }
                                        return Text(
                                          text,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        );
                                      }),
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
                                      reservedSize: 15,
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
                                            fontSize: 8,
                                          ),
                                        );
                                      }),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(3, (index) => const Box2()),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(3, (index) => const Box2()),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
                // details

                
                Container(
                  height: 700,
                  width: 400,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: "Transaktionsliste",
                          fontsize: 25,
                          fontweight: FontWeight.w900,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(text: "Mitarbeiter"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: List.generate(
                                        20,
                                        (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: Row(
                                            children: [
                                              const CircleAvatar(
                                                radius: 9,
                                                backgroundImage: AssetImage(
                                                    "assets/profileperson.png"),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              MyText(
                                                text: names[index],
                                                fontsize: 15,
                                                fontweight: FontWeight.w300,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  MyText(text: "Kunde"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                        20,
                                        (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: MyText(
                                            text: send[index],
                                            fontsize: 15,
                                            fontweight: FontWeight.w300,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(text: "Betreff"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                        20,
                                        (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: MyText(
                                            text: "Haircut packet1 ",
                                            fontsize: 15,
                                            fontweight: FontWeight.w300,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(text: "Umsatz"),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                        20,
                                        (index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5.0),
                                          child: Text(
                                            prices[index].toString() + "\$",
                                            style: GoogleFonts.urbanist(
                                              color: prices[index] > 40
                                                  ? Colors.green
                                                  : Colors.red,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
