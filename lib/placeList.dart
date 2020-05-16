import 'package:flutter/material.dart';

import './individPlace.dart';

class PlaceList extends StatefulWidget {
  final String newPlace;
  final List<String> placeListArray;

  PlaceList(
    this.newPlace,
    this.placeListArray,
  );

  @override
  _PlaceListState createState() => _PlaceListState();
}

class _PlaceListState extends State<PlaceList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              'Your Sites',
              style: TextStyle(fontSize: 25),
            ),
            ...widget.placeListArray.map((place) {
              return IndividualPlace(place);
            })
          ],
        ));
  }
}
