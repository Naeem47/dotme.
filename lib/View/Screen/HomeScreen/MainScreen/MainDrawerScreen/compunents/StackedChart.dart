import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedChart extends StatelessWidget {
  const StackedChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Pakistan', 20, 10, 40, 30),
      ChartData('UK', 20, 10, 40, 30),
      ChartData('Russia', 20, 10, 40, 30),
      ChartData('America', 10, 20, 30, 50),
    ];
    // return Container(
    //     child: SfCartesianChart(
    //   primaryXAxis: CategoryAxis(),
    //   primaryYAxis: NumericAxis(
    //     edgeLabelPlacement: EdgeLabelPlacement.shift,
    //     // numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
    //     // title: AxisTitle(text: 'Shahid Jaber'),
    //   ),
    //   series: [
    //     StackedColumnSeries(
    //         enableTooltip: true,
    //         dataLabelSettings: DataLabelSettings(isVisible: true),
    //         color: Color(0xff381E83),
    //         dataSource: chartData,
    //         xValueMapper: (ChartData ch, __) => ch.x,
    //         yValueMapper: (ChartData ch, __) => ch.y1)
    //   ],
    // ));
    return SfCalendar(
      view: CalendarView.week,
      viewNavigationMode: ViewNavigationMode.none,
      dataSource: MeetingDataSource(getAppointments()),
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
      subject:
          '08:30 - 09:00 \nVideo Meeting Nummer \nhttps://zoom.us/i/19823124321431',
      color: Color(0xff381E83),
      recurrenceRule: 'FREQ=DAILY;COUNT=10',
      isAllDay: false));

  return meetings;
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> source) {
    appointments = source;
  }
}

class ChartData {
  final String x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
}
