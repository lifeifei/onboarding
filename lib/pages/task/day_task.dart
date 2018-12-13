import 'package:flutter/material.dart';
import 'package:onboarding/models/task_item.dart';

class DayTask extends StatelessWidget {
  final List<Task> tasks;

  DayTask(this.tasks);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/taskList');
      },
        child:Column(
      children: <Widget>[
        Expanded(
            child: ListView.builder(
              itemBuilder: _buildTaskItem,
              itemCount: tasks.length,
            )),
        Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            Text("2 tasks",style: TextStyle(fontSize: 15.0, color: Colors.black)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(child:Slider(activeColor: Colors.red, inactiveColor: Colors.green, value: 0.2, onChanged: null,)),
                Text('20%', style: TextStyle(color: Colors.black, fontSize: 15.0),)
              ],)

          ],)

      ],
    ));
  }

  Widget _buildTaskItem(BuildContext context, int index) {
    return CheckboxListTile(
        title: Text(tasks[index].description),
        onChanged: (bool value) {},
        value: true,
        controlAffinity: ListTileControlAffinity.leading);
  }
}