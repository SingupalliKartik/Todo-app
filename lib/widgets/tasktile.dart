import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  String  tasktitle;
   bool? ischecked = false;
  final String? text;
  final Function(bool?)? checkboscall;
  final Function() longpresscal;

  Tasktile(
      {required this.ischecked ,
      this.text,
      required this.checkboscall,
      required this.longpresscal,
        required this.tasktitle
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:  longpresscal,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: ischecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboscall,
      ),
    );
  }
}

// (bool? checkbox) {
// WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
// setState(() {
// ischecked = checkbox!;
// });
// });
