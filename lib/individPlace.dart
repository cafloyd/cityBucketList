import 'package:flutter/material.dart';

class IndividPlace extends StatelessWidget {
  final String place;

  IndividPlace(
    this.place,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(place, style: TextStyle(fontSize: 20)),
    );
  }
}
