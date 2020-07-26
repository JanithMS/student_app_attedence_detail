import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class TabCal extends StatefulWidget {
  final Function add;
  const TabCal({Key key, this.add}) : super(key: key);

  @required
  _TabCal createState() => _TabCal(add);
}

class _TabCal extends State<TabCal> {
  CalendarController _calendarController;

  Function add;
  _TabCal(this.add);

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
      onDayLongPressed:
          add, /*
        calendarStyle: CalendarStyle(
          selectedColor: Colors.deepOrange[400],
          todayColor: Colors.deepOrange[200],
          markersColor: Colors.brown[700],
          outsideDaysVisible: false,
        )*/
    );
  }
}
