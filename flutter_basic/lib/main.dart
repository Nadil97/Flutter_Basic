import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nadil App"),
        ),
        body: Center(
          child: Text("Hello world",style: TextStyle(fontSize: 50.0),),
          
        ),
      ),
    );
  }
}
