import 'package:asltranslator/constants.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWeekly extends StatefulWidget {
  const CalendarWeekly({Key? key}) : super(key: key);

  @override
  State<CalendarWeekly> createState() => _CalendarWeeklyState();
}

class _CalendarWeeklyState extends State<CalendarWeekly> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.065,
      width: MediaQuery.of(context).size.width - 60,
      //margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        //color: Colors.blue,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TableCalendar(
        headerVisible: false,
        daysOfWeekVisible: false,
        // daysOfWeekStyle: DaysOfWeekStyle(
        //   decoration: BoxDecoration(
        //     color: Colors.blue,
        //   ),
        //   weekdayStyle: TextStyle(
        //     color: Colors.red,
        //   ),
        // ),

        firstDay: DateTime.utc(2010, 10, 16),
        lastDay: DateTime.utc(2030, 3, 14),
        focusedDay: DateTime.now(),
        calendarFormat: CalendarFormat.week,
        calendarStyle: CalendarStyle(
          todayTextStyle:
              const TextStyle(fontSize: 12, color: AppColors.orange),
          defaultTextStyle: const TextStyle(
            fontSize: 12,
          ),
          weekendTextStyle:
              const TextStyle(fontSize: 12, color: AppColors.orange),
          cellMargin: const EdgeInsets.all(8),
          todayDecoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(15.0),
            //shape: BoxShape.circle,
          ),
          defaultDecoration: BoxDecoration(
              color: AppColors.lightorange,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 7.5,
                  spreadRadius: 1.0,
                  color: Color.fromARGB(14, 0, 0, 0),
                ),
              ]),
          weekendDecoration: BoxDecoration(
              color: AppColors.lightorange,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 7.5,
                  spreadRadius: 1.0,
                  color: Color.fromARGB(14, 0, 0, 0),
                ),
              ]),
          holidayDecoration: BoxDecoration(
            color: AppColors.lightorange,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                blurRadius: 7.5,
                spreadRadius: 1.0,
                color: Color.fromARGB(14, 0, 0, 0),
              ),
            ],
          ),
          outsideDecoration: BoxDecoration(
            color: AppColors.lightorange,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: const [
              BoxShadow(
                blurRadius: 7.5,
                spreadRadius: 1.0,
                color: Color.fromARGB(14, 0, 0, 0),
              ),
            ],
          ),
          outsideTextStyle:
              const TextStyle(fontSize: 12, color: AppColors.orange),
          holidayTextStyle: const TextStyle(
            fontSize: 12,
            color: AppColors.orange,
          ),
        ),
      ),
    );
  }
}
