import 'package:flutter/material.dart';
import 'package:task_app/screen/splash_screen1.dart';
import 'package:task_app/screen/splash_screen2.dart';
import 'package:task_app/screen/stepper1.dart';

// https://www.figma.com/file/cqIZKIuhHTCiwXVOStWwh7/Task-Management-Mobile-App-UI-Kit?node-id=1%3A362

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stepper1(),
      routes: {
        "stepper1": (BuildContext context) => Stepper1(),
      },
    );
  }
}
