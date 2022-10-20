import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "project 03",
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  // const Homepage({Key? key}) : super(key: key);
  int count = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project 3"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "You have pushed button time",
            style: TextStyle(fontSize: 25.0),
          ),
          Text(
            '$count',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        
        child: Icon(Icons.add),
        onPressed: () {

        },
      ),
    );
  }
}
