import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Model/task_data.dart';
import 'package:to_do/Screens/add_task_screen.dart';

import '../Model/task.dart';
import '../Widgets/tasks_list.dart';

class TaskScreen extends StatefulWidget {


  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=> AddTaskScrenn(),
          );
        },

      ),
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
             const   CircleAvatar(
                  radius: 35.0,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.menu, size: 40, color: Colors.teal),
                ),
             const   SizedBox(
                  height: 15.0,
                ),
             const   Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCounte} Task',
                  style:const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),

              ),
              child:TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}


