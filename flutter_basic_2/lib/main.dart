import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Flutter demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
      ),
      // darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter project 2"),
      ),
      body: //Container(
          //   margin: EdgeInsets.all(20.0),
          //   padding: EdgeInsets.all(50.0),
          //   height: 200.0,
          //   alignment: Alignment.bottomCenter,
          //   width: double.infinity,
          //   color: Colors.pink,
          //   // ignore: prefer_const_constructors
          //   child: Text(
          //     "Chek colors",
          //     style: TextStyle(
          //       fontSize: 20.0,
          //     ),
          //   ),
          // ),
          //     Container(
          //   color: Colors.pink,
          //   width: double.infinity,
          //   child: Column(
          //       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //       // crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         Text(
          //           "Text 1",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //         Text(
          //           "Text 2",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //         Text(
          //           "Text 3",
          //           style: TextStyle(fontSize: 20),
          //         ),
          //         Row(
          //           children: [
          //             Text(
          //               "Text 1",
          //               style: TextStyle(fontSize: 20),
          //             ),
          //             Text(
          //               "Text 2",
          //               style: TextStyle(fontSize: 20),
          //             ),
          //             Text(
          //               "Text 3",
          //               style: TextStyle(fontSize: 20),
          //             ),
          //           ],
          //         )
          //       ]),
          // ),
          Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Change image"),
              subtitle: Text("change the image"),
              trailing: Icon(Icons.menu),
              onTap: (() {}),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text("Britness autto"),
              subtitle: Text("change the Britness"),
              trailing: Icon(Icons.menu),
              onTap: (() {}),
            ),
          ],
        ),
      ),
    );
  }
}
