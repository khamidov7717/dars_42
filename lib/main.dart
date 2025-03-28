import 'package:dars42/tasks/computationscreen.dart';
import 'package:dars42/tasks/imagescreen.dart';
import 'package:dars42/tasks/listscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ImageScreen());
  }
}
