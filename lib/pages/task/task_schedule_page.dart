import 'package:flutter/material.dart';
import 'package:onboarding/models/all_tasks.dart';
import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/models/task_item.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/task/task_schedule.dart';

class TaskSchedulePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60.0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: TaskSchedule(AllTasks.allDaysTasks),
                  )
                ],
              )),
        )
    );
  }

}
