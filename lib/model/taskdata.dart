import 'package:flutter/foundation.dart';
import 'task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {
  List<task> _tasks = [
    // task(name: "kartik 2"),
    // task(name: "kartik 3"),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addtask(String newtasktitle) {
    final uptask = task(name: newtasktitle);
    _tasks.add(uptask);
    notifyListeners();
  }

  UnmodifiableListView<task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(task taskt) {
    taskt.toggleDone();
    notifyListeners();
  }

  void deltask(task taskt) {
    _tasks.remove(taskt);
    notifyListeners();
  }
}
