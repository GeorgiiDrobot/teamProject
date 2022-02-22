import 'dart:ui';

import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.greenAccent),
        home: Scaffold(

          appBar: AppBar(
            toolbarHeight: 204,
            backgroundColor: Colors.greenAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
            ),
          body: Container(
            child: Text('Kitchen'),

            margin: EdgeInsets.all(20.5),
          ),


            ),

          );

  }
}
