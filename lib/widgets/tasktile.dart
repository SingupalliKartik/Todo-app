import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  final bool? ischecked;
  final String? text;
  final  Function? checkboscall;
  final Function? longpresscal;

  Tasktile(
      {this.ischecked = false,
      this.text,
      required this.checkboscall,
      required this.longpresscal});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscal!(),
      title: Text(
        "this is a task",
        style: TextStyle(
            decoration: ischecked == true ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboscall!(),
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
