import 'package:flutter/material.dart';

class IndividualPlace extends StatelessWidget {
  final String place;

  IndividualPlace(
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
