import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todoey/model/taskdata.dart';

class newtask extends StatefulWidget {
  final Function? Addtask;

  newtask({this.Addtask});

  @override
  State<newtask> createState() => _newtaskState();
}

class _newtaskState extends State<newtask> {
  TextEditingController tasktext = TextEditingController();
  @override
  void dispose() {
    tasktext.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // String  newtasktitle="hi";
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add TASK",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Color(0xff1AD2C3)),
            ),
            TextField(
              autofocus: true,
              controller: tasktext,
              textAlign: TextAlign.center,
              // onChanged: (newText) {
              //   newtasktitle = newText;
              // },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Color(0xff1AD2C3)),
              ),
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addtask(tasktext.text);
                Navigator.pop(context);
              },
              child: Text(
                "ADD",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
