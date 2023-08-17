import 'package:dot_me/View/Utils/Widgets/MyText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';


class TermineAndKalender extends StatelessWidget {
  const TermineAndKalender({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
         mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
            text: 'Dein nächster Termine',
            fontsize: 25,
            fontweight: FontWeight.w900,
            fontcolor: Colors.black,
          ),
          25.verticalSpace,
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            height: 155,
            decoration: BoxDecoration(
                color: const Color(0xffF3F3F3),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  text:
                      'Vorsorgliche Hautuntersuchung mit weiterer Absprache zur besten Genesung',
                  fontsize: 16,
                  fontweight: FontWeight.w900,
                  fontcolor: Colors.black,
                ),
                12.verticalSpace,
                Row(
                    children: List.generate(3, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: 'Datum',
                          fontsize: 12,
                          fontweight: FontWeight.w500,
                          fontcolor: const Color(0xffB3B3B3),
                        ),
                        7.verticalSpace,
                        MyText(
                          text: '01.April 2023',
                          fontsize: 16,
                          fontweight: FontWeight.w500,
                          fontcolor: Colors.black,
                        )
                      ],
                    ),
                  );
                })),
                5.verticalSpace,
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 400,
                      padding: EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                          color: Color(0xff381E83),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          MyText(
                            text: 'Video Meeting Nummer',
                            fontsize: 12,
                            fontweight: FontWeight.w900,
                            fontcolor: Colors.white,
                          ),
                          2.horizontalSpace,
                          MyText(
                            text: 'https://zoom.us/i/19823124321431',
                            fontsize: 12,
                            fontweight: FontWeight.w600,
                            fontcolor: Colors.white,
                          )
                        ],
                      ),
                    ),
      
                     const  Spacer(),
                     Image.asset('assets/settingicons.png',scale: 2,),
                     3.horizontalSpace,
                     Image.asset('assets/editicon.png',scale: 2,),
                     3.horizontalSpace,
                     Image.asset('assets/deleteicon.png',scale: 2,),
                     5.horizontalSpace,
      
                  ],
                ),
              ],
            ),
          ),
      //const Spacer(),
          Divider(
          thickness: 1,
          color: Color(0xffF3F3F3),
        ),
        12.verticalSpace,
      
          MyText(text: 'Kalender',fontsize: 25,fontweight: FontWeight.w900,fontcolor: Colors.black,),
        
       SfCalendar(
      view: CalendarView.week,
      //firstDayOfWeek: 6,
      //initialDisplayDate: DateTime(2021, 03, 01, 08, 30),
      //initialSelectedDate: DateTime(2021, 03, 01, 08, 30),
      dataSource: MeetingDataSource(getAppointments()),
        ),
      
        ],
      ),
    );
  }
}
List<Appointment> getAppointments() {
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  final DateTime startTime =
      DateTime(today.year, today.month, today.day, 9, 0, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 2));

  meetings.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      subject: 'Board Meeting',
      color: Colors.red,
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}
