import 'package:dot_me/View/Screen/HomeScreen/MainScreen/MainDrawerScreen/compunents/StackedChart.dart';
import 'package:dot_me/View/Screen/HomeScreen/MainScreen/Side_Menu/compunents/DrawerIconButton.dart';
import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:dot_me/View/Utils/Widgets/MyTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:table_calendar/table_calendar.dart';

class KalenderScreen extends StatefulWidget {
  const KalenderScreen({super.key});

  @override
  State<KalenderScreen> createState() => _KalenderScreenState();
}

class _KalenderScreenState extends State<KalenderScreen> {
  late CalendarController _controller;
  TextEditingController searchcontrollor = TextEditingController();
  bool? valuefirst = false;
  bool valuesecond = false;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                width: double.infinity,
                height: 90,
                color: Colors.white,
                child: Row(
                  children: [
                    MyText(
                      text: 'Kalenderwoche 53, April, 2023',
                      fontsize: 39,
                      fontweight: FontWeight.w900,
                    ),
                    3.horizontalSpace,
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    3.horizontalSpace,
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_forward_ios)),
                    const Spacer(),
                    Container(
                      height: 48,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Woche',
                            fontsize: 15,
                            fontweight: FontWeight.w500,
                            fontcolor: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_drop_down),
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    DrawerIconButton(
                      bgcolor: Colors.black,
                      image: 'assets/cal.png',
                    ),
                    DrawerIconButton(
                      bgcolor: Colors.black,
                      image: 'assets/filtericon.png',
                    ),
                    Container(
                      height: 48,
                      width: 220,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                            text: 'Neuen Termin erstellen',
                            fontsize: 16,
                            fontweight: FontWeight.w500,
                            fontcolor: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 345.h,
                            width: 360,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                // color: const Color(0xffF3F3F3),
                                borderRadius: BorderRadius.circular(15.r)),
                            child: TableCalendar(
                              headerStyle: HeaderStyle(
                                // centerHeaderTitle: true,
                                formatButtonDecoration: BoxDecoration(
                                  color: Colors.brown,
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                formatButtonTextStyle:
                                    TextStyle(color: Colors.white),
                                // formatButtonShowsNext: false,
                              ),
                              focusedDay: DateTime.now(),
                              firstDay: DateTime.utc(1970, 1, 1),
                              lastDay: DateTime.utc(2030, 1, 1),
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        MyText(
                          text: "Personen oder Ereignis suchen",
                          fontcolor: Colors.black,
                          fontsize: 16.sp,
                          fontweight: FontWeight.w900,
                        ),
                        SizedBox(
                          height: 58,
                          width: 360,
                          child: MyTextField(
                              radius: 100,
                              borderColor: Colors.transparent,
                              width: 250,
                              backColor: Colors.grey.withOpacity(0.2),
                              hintText: 'Suche',
                              prefixIcon: 'assets/personicon.png',
                              controller: searchcontrollor,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        15.verticalSpace,
                        Container(
                          height: 200,
                          width: 360,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyText(
                                      text: "Deine Kalender",
                                      fontcolor: Colors.black,
                                      fontsize: 16.sp,
                                      fontweight: FontWeight.w900,
                                    ),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 3)),
                                      child: Icon(
                                        Icons.add,
                                        size: 16.sp,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              10.verticalSpace,
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                leading: CircleAvatar(
                                    radius: 25.r,
                                    child: Image.asset("assets/p1.png")),
                                title: Text('Company 1 Allgemeines'),
                                trailing: Checkbox(
                                  checkColor: Colors.black,
                                  activeColor: Colors.white,
                                  value: valuefirst,
                                  onChanged: (value) {
                                    setState(() {
                                      valuefirst = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 360,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyText(
                                      text: "Personen in diesem Kalender",
                                      fontcolor: Colors.black,
                                      fontsize: 16.sp,
                                      fontweight: FontWeight.w900,
                                    ),
                                    Container(
                                      height: 24,
                                      width: 24,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black, width: 3)),
                                      child: Icon(
                                        Icons.add,
                                        size: 16.sp,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              10.verticalSpace,
                              ListTile(
                                contentPadding: EdgeInsets.all(0),
                                leading: CircleAvatar(
                                    radius: 25.r,
                                    child: Image.asset("assets/p1.png")),
                                title: Text('Person 1'),
                                trailing: Checkbox(
                                  checkColor: Colors.black,
                                  activeColor: Colors.white,
                                  value: valuefirst,
                                  onChanged: (value) {
                                    setState(() {
                                      valuefirst = value;
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 845,
                              width: MediaQuery.of(context).size.width * 0.60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  // color: const Color(0xffF3F3F3),
                                  borderRadius: BorderRadius.circular(15.r)),
                              child: StackedChart()),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
