import 'package:flutter/material.dart';

import './addPlace.dart';
import './placeList.dart';

class Places extends StatefulWidget {
  final Function pressHandler;
  final myController;
  final String newPlace;
  final List<String> placeListArray;

  Places(
    this.pressHandler,
    this.myController,
    this.newPlace,
    this.placeListArray,
  );

  @override
  _PlacesState createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          PlaceList(widget.newPlace, widget.placeListArray),
          AddPlace(widget.pressHandler, widget.myController),

        ]
    ),);
  }
}

