import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/pages/task/day_task.dart';

class TaskSchedule extends StatelessWidget {
  final List<DayTasks> dayTasks;

  TaskSchedule(this.dayTasks);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset('images/virtualbuddy.png',
              height: 100.0, width: 100.0, alignment: Alignment.topLeft),
          SizedBox(
            height: 20.0,
          ),
          Text('Welcome to SEEK, Lifei'),
          SizedBox(
            height: 20.0,
          ),
          Text(
              "To help you kick-start your career, here's a list of things that you need to do in the first 3 months"),
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
                  decoration: BoxDecoration(
                      color: Colors.white
                  ),
                  child: DayTask(dailyTask.tasks),
              );
            },
          );
        }).toList(),
        height: 300.0,
        autoPlay: false
    );
  }
}
