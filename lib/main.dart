import 'package:flutter/material.dart';

import './map.dart';
import './places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String newPlace;
  List<String> placeListArray = [];
  final myController = TextEditingController();

  pressHandler() {
    newPlace = myController.text;
    setState(() {
      placeListArray.add(newPlace);
      myController.text = '';
    });
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
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
              Places(pressHandler, myController, newPlace, placeListArray),
            ],
          )),
    ));
  }
}
