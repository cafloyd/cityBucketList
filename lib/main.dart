import 'package:flutter/material.dart';

import './map.dart';
import './addPlace.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  pressHandler() {
    print('You have added a place!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              title: Text('About Town'),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.map)),
                  Tab(icon: Icon(Icons.list)),
                ],
              )),
          body: TabBarView(
            children: [
              Map(),
              AddPlace(pressHandler),
            ],
          )),
    ));
  }
}
