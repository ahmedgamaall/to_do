import 'package:flutter/material.dart';
import 'package:to_do/Model/task.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
   String titletask;
 dynamic Function()? longPresseCallback;
   Function(bool?)? checkbixCallback;
   TaskTile({required this.titletask ,required this.isChecked ,required this.checkbixCallback,required this.longPresseCallback});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      onLongPress: longPresseCallback,
      title: Text(
        titletask,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.blueAccent,
      value: isChecked,
    onChanged: checkbixCallback,

      ));
    }



  }






