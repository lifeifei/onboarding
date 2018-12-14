import 'package:onboarding/models/task_item.dart';

class DayTasks {
  final int dayNumber;
  final List<Task> tasks;
  final String description;
  DayTasks(this.dayNumber, this.tasks, this.description);

  static int getCompletedTasks(List<Task> allTasks) {
    return allTasks.where((task) => task.isCompleted).length;
  }

  static int getCompletedProgressInPercentage(List<Task> allTasks) {
    int completedTaskCount = getCompletedTasks(allTasks);
    return completedTaskCount *100  ~/ (allTasks.length);
  }

  static double getCompletedProgress(List<Task> allTasks) {
    return getCompletedProgressInPercentage(allTasks)/100;
  }
}