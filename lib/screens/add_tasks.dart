import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task.dart';
import 'package:todoflutter/models/task_data.dart';
class AddTasks extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    String newTaskTitle;

    return Container(
     color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          children: <Widget>[
          Text('Add Task',
          textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
            TextField(
              autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText){
                newTaskTitle = newText;
            },
            ),
            FlatButton(
              child: Text('ADD',
              style: TextStyle(
                color: Colors.white
              ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: (){


                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
                },
            )

          ],
        ),
      ),

    );
  }
}
