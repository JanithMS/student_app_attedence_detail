import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TabCal extends StatefulWidget {
  TabCal({Key key}) : super(key: key);

  _TabCal createState() => _TabCal();
}

class _TabCal extends State<TabCal> {
  CalendarController _calendarController;
  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        calendarController: _calendarController,
        startingDayOfWeek: StartingDayOfWeek.monday,
        availableCalendarFormats: {CalendarFormat.month: 'Month'},
        calendarStyle: CalendarStyle(
          selectedColor: Colors.deepOrange[400],
          todayColor: Colors.deepOrange[200],
          markersColor: Colors.brown[700],
          outsideDaysVisible: false,
        ));
  }
}