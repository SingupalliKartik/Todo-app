import 'package:flutter/material.dart';

class task {
  final String? name;
  bool? isDone;
  task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone!;
  }
}
