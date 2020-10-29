import 'package:flutter/material.dart';
class TasksTile extends StatelessWidget{
 final bool ischecked ;
 final String taskTitle;
 final Function checkboxCallback;
 final Function longPressCallBack;
TasksTile({this.ischecked, this.taskTitle,this.checkboxCallback,this.longPressCallBack});
 @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(taskTitle,
        style: TextStyle(
            decoration:ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing:  Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
     onChanged: checkboxCallback,
      ),

      );

  }
}




