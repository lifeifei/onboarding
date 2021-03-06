import 'package:flutter/material.dart';
import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/models/task_item.dart';
import 'package:onboarding/pages/common/page_decoration.dart';
import 'package:onboarding/pages/task/day_task.dart';

class TaskListPage extends StatelessWidget {
  final List<Task> tasks;
  final Function toggleCompleted;

  TaskListPage(this.tasks, this.toggleCompleted);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Today')),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                itemBuilder: _buildTaskItem,
                itemCount: tasks.length,
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("${DayTasks.getCompletedTasks(tasks)} tasks", style: Theme.of(context)
                        .textTheme
                        .subhead
                        .copyWith(color: Colors.white)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                          child: Slider(
                        activeColor: Colors.red,
                        inactiveColor: Colors.green,
                        value: DayTasks.getCompletedProgress(tasks),
                        onChanged: null,
                      )),
                      Text("${DayTasks.getCompletedProgressInPercentage(tasks)}%",
                          style: Theme.of(context)
                              .textTheme
                              .subhead
                              .copyWith(color: Colors.white))
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }

  Widget _buildTaskItem(BuildContext context, int index) {
    return CheckboxListTile(
        title: Text(tasks[index].description),
        onChanged: (bool value) {
          toggleCompleted(index, value);
        },
        value: tasks[index].isCompleted,
        controlAffinity: ListTileControlAffinity.leading);
  }
}
