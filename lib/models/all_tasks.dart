import 'package:onboarding/models/day_tasks.dart';
import 'package:onboarding/models/task_item.dart';

class AllTasks {
  static final List<DayTasks> allDaysTasks = [
    DayTasks(
        1,
        [
          Task(description: 'Receive a welcome bag'),
          Task(description: 'Meet your buddy'),
          Task(description: 'Meet your team for coffee'),
          Task(description: 'Join Slack channels'),
          Task(description: 'Install Softwares')
        ],
        "First day"),
    DayTasks(
        2,
        [
          Task(description: 'task 1'),
          Task(description: 'task 2'),
          Task(description: 'task 3')
        ],
        "Week 1"),
    DayTasks(
        3,
        [
          Task(description: 'task 1'),
          Task(description: 'task 2'),
          Task(description: 'task 3')
        ],
        "Week 2"),
    DayTasks(
        4,
        [
          Task(description: 'task 1'),
          Task(description: 'task 2'),
          Task(description: 'task 3')
        ],
        "Month 1"),
  ];
}
