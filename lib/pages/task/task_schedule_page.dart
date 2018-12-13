import 'package:flutter/material.dart';
import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/models/task_item.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/task/task_schedule.dart';

class TaskSchedulePage extends StatelessWidget {
  final List<DayTasks> dayTasks = [
    DayTasks(1, [Task(description: 'something', isCompleted: false)])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Tasks'),
        ),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: TaskSchedule(dayTasks),
                  )
                ],
              )),
        )
    );
  }

}
