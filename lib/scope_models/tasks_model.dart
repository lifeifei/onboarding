import 'package:onboarding/models/all_tasks.dart';
import 'package:onboarding/models/task_item.dart';
import 'package:scoped_model/scoped_model.dart';

class TasksModel extends Model {
  List<Task> _tasks = List.from(AllTasks.allDaysTasks[0].tasks);

  List<Task> get tasks {
    return _tasks;
  }

  void toggleCompleted(int index, bool isCompleted) {
    Task task = _tasks[index];
    Task updatedTask = Task(description: task.description, isCompleted: isCompleted);
    _tasks[index] = updatedTask;
    notifyListeners();
  }

}
