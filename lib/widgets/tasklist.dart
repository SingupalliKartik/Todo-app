import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskdata.dart';
import 'package:todoey/widgets/tasktile.dart';

class Tasklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return Tasktile(
              text: taskData.tasks[index].name,
              ischecked: taskData.tasks[index].isDone,
              checkboscall: (checkboxstate) {
                taskData.updateTask(taskData.tasks[index]);
              },
              longpresscal: () {
                taskData.deltask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
