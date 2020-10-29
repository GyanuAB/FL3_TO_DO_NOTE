import 'package:flutter/material.dart';
import 'package:todoflutter/models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'buy water'),
  ];
  int get taskCount{
    return tasks.length;
  }
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

}