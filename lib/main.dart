import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Model/task.dart';
import 'package:to_do/Model/task_data.dart';
import 'Screens/add_task_screen.dart';
import 'Screens/tasck_scrren.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
     create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
