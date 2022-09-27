import 'package:flutter/material.dart';
import 'package:to_do/Model/task.dart';
import 'dart:collection';


class TaskData extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'course C++'),
    Task(name: 'Book How Programing in C++'),
    Task(name: 'data Structrs & OOP'),
  ];
  UnmodifiableListView<Task> get tasks{
  return UnmodifiableListView(_tasks);
  }

  int get taskCounte{
    return _tasks.length;
  }
  void addTAsk(String newTAskTitl){
    final task = Task(name: newTAskTitl);
    _tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTAsk(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}