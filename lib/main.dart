import 'package:flutter/material.dart';
import 'package:home_guru_app/welcome_screen.dart';
import 'package:home_guru_app/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(),
      home: mainScreen()
    );
  }
}

