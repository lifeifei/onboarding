import 'package:onboarding/models/task_item.dart';

class DayTasks {
  final int dayNumber;
  final List<Task> tasks;
  final String description;
  DayTasks(this.dayNumber, this.tasks, this.description);
}