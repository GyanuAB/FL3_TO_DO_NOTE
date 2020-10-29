import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutter/models/task_data.dart';
import 'package:todoflutter/screens/tasks_screen.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context)=>TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
