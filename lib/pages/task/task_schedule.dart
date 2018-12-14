import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onboarding/models/all_tasks.dart';
import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/pages/task/day_task.dart';
import 'package:onboarding/scope_models/tasks_model.dart';
import 'package:scoped_model/scoped_model.dart';

class TaskSchedule extends StatelessWidget {
  final List<DayTasks> dayTasks;

  TaskSchedule(this.dayTasks);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/self.png',
              height: 100.0, width: 100.0, alignment: Alignment.topLeft),
          SizedBox(
            height: 20.0,
          ),
          Text('Welcome to SEEK, Ruby',
              style: Theme.of(context).textTheme.title),
          SizedBox(
            height: 20.0,
          ),
          Text(
              "To help you kick-start your career, here's a list of things that you need to do in the first 3 months",
              style: Theme.of(context).textTheme.subhead),
          SizedBox(
            height: 50.0,
          ),
          _buildSlides()
        ]);
  }

  Widget _buildSlides() {
    return CarouselSlider(
        items: dayTasks.map((dailyTask) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.white),
                child: _buildDayTask(dailyTask),
              );
            },
          );
        }).toList(),
        height: 300.0,
        autoPlay: false);
  }

  Widget _buildDayTask(DayTasks dailyTask) {
    if (dailyTask.dayNumber == 1) {
      return ScopedModelDescendant<TasksModel>(
          builder: (context, child, model) {
        return DayTask(model.tasks, 1, dailyTask.description);
      });
    }
    return DayTask(dailyTask.tasks, dailyTask.dayNumber, dailyTask.description);
  }
}
