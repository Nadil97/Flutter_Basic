import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_basic3/screens/homepage.dart';

class SecondScreen extends StatelessWidget {
  String text;
  SecondScreen(this.text);
  // const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            Navigator.pop(
                context,
                Homepage(
                  title: '',
                ));
          },
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            text,
            style: TextStyle(fontSize: 25.0),
          ),
        ]),
      ),
    );
  }
}
