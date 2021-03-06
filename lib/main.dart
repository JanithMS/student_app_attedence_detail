import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:student_app_02/course_title.dart';
import 'package:student_app_02/table_cal.dart';
import 'package:student_app_02/temp.dart';
import 'leave_data.dart';

void main() {
  runApp(MaterialApp(
    home: CourseDetail(),
  ));
}

class CourseDetail extends StatefulWidget {
  @override
  _CourseDetailState createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> {
  String courseID = 'ED5017';
  String courseName = 'Digital Signal Processing';
  int leaveAllowed = 8;
  static var absent = 0;
  Person per = new Person();
  List<String> temp = [
    ('abcd'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              courseTitle(courseID, courseName),
              leavesData(leaveAllowed, absent),
              //SizedBox(height: 50,),
              Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 1, horizontal: 16),
                                  child: TabCal(
                                    add: (DateTime dateTime, List temp) {
                                      setState(() {
                                        absent++;
                                      });
                                    },
                                  ))
                            ]),
                      ),
                    ]),
              ),
              //SizedBox(height: 300,),
              Text(
                'Long press a date to mark/unmark absent',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
