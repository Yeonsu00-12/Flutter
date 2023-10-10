import 'package:flutter/material.dart';
import 'package:timer_project/screens/timer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ponodoro Timer App',
      home: TimerScreen(),
    );
  }
}
