import 'package:flutter/material.dart';
import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/models/task_item.dart';

class DayTask extends StatelessWidget {
  final List<Task> tasks;
  final int dayNumber;
  final String dayDescription;

  DayTask(this.tasks, this.dayNumber, this.dayDescription);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          int dayIndex = dayNumber - 1;
          Navigator.pushNamed(context, '/taskList/$dayIndex');
        },
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(dayDescription,
                      style: Theme.of(context)
                          .textTheme
                          .subhead
                          .copyWith(color: Color(0xFF4f4f4f), fontSize: 20.0, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 120.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10.0),
                        child: Text("${DayTasks.getCompletedTasks(tasks)} tasks",
                        style: TextStyle(fontSize: 15.0, color: Color(0xFF4f4f4f), fontStyle: FontStyle.normal))),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Expanded(
                            child: Slider(

                          activeColor: Color(0xFF2abbde),
                          inactiveColor: Color(0xFFdff6fb),
                          value: DayTasks.getCompletedProgress(tasks),
                          onChanged: null,
                        )),
                        Text(
                          "${DayTasks.getCompletedProgressInPercentage(tasks)}%",
                          style: TextStyle(color: Color(0xFF4f4f4f), fontSize: 15.0, fontStyle: FontStyle.normal))],
                        )
                      ],
                    )
                  ],
                )
              ,
            ));
  }

  Widget _buildTaskItem(BuildContext context, int index) {
    return CheckboxListTile(
        title: Text(tasks[index].description),
        onChanged: (bool value) {},
        value: tasks[index].isCompleted,
        controlAffinity: ListTileControlAffinity.leading);
  }
}
