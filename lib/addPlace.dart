import 'package:flutter/material.dart';

import './textInput.dart';

class AddPlace extends StatefulWidget {
  final Function pressHandler;
  final myController;

  AddPlace(
    this.pressHandler,
    this.myController,
  );

  @override
  _AddPlaceState createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          TextInput(widget.myController),
          RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Add new place!'),
              onPressed: widget.pressHandler)
        ],
      ),
    );
  }
}
