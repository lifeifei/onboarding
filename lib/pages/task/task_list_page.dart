import 'package:flutter/material.dart';
import 'package:onboarding/models/Task.dart';
import 'package:onboarding/pages/common/page_decoration.dart';

class TaskListPage extends StatelessWidget {
  final List<Task> tasks;

  TaskListPage(this.tasks);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Today')),
        body: Container(
          decoration: PageDecoration.buildBoxDecoration(),
          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                itemBuilder: _buildTaskItem,
                itemCount: tasks.length,
              )),
              Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                Text("2 tasks"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  Expanded(child:Slider(activeColor: Colors.red, inactiveColor: Colors.green, value: 0.2, onChanged: null,)),
                  Text('20%')
                ],)

              ],)

            ],
          ),
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
