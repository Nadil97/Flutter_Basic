import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: "Flutter demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatelessWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demmo app"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (() {}),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (() {}),
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (() {}),
          )
        ],
        flexibleSpace: Image.asset(
          'assets/back.jpg',
          fit: BoxFit.cover,
        ),
        bottom: PreferredSize(
          child: Container(),
          preferredSize: Size.fromHeight(70),
        ),
      ),
    );
  }
}
