import 'package:flutter/material.dart';

import 'package:to_do/Model/task_data.dart';
import 'package:to_do/Widgets/task_tile.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return  ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              titletask:task.name,
              isChecked: task.isDone,
              checkbixCallback: (checkeboxState) {
                taskData.updateTask(task);
              },
              longPresseCallback: (){
               taskData.deleteTAsk(task);
              },
            );
          },
          itemCount: taskData.taskCounte,
        );
      },

    );
  }
}
