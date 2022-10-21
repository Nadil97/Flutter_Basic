import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "project 03",
      home: Homepage(
        title: 'Flutter navigation',
      ),
      
    );
  }
}
