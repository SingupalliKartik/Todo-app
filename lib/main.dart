import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/model/taskdata.dart';
import 'package:todoey/screen/taskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
