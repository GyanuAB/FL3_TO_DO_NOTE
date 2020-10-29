import 'package:flutter/material.dart';
import 'package:todoflutter/widgets/tasks_tile.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/models/task_data.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
class TasksList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return  ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TasksTile(
              taskTitle: task.name,
              ischecked: task.isDone,
              checkboxCallback :(checkboxState){
              taskData.updateTask(task);
              },
            longPressCallBack: (){
                taskData.deleteTask(task);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },


    );
  }
}