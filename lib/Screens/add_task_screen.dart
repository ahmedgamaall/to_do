import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/Model/task_data.dart';

class AddTaskScrenn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    late String NewTaslTitile;
    return Container(
      color:const Color(0xff757575),
      child: Container(
        padding:const EdgeInsets.all(30.0),
        decoration:const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
         const   Text(
              textAlign: TextAlign.center,
              ' Add Task',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.teal,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newValue){
               NewTaslTitile = newValue;
              },
            ),
            ElevatedButton(
              onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTAsk(NewTaslTitile);
              Navigator.pop(context);
              },
              child:  Text('Add'),
             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.teal,
             ),
            ),
          ],
        ),
      ),
    );
  }
}


