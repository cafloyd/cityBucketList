import 'package:flutter/material.dart';

import './textInput.dart';

class AddPlace extends StatefulWidget {
  final Function pressHandler;

  AddPlace(this.pressHandler);

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
          TextInput(),
          RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text('Buck-it!'),
              onPressed: widget.pressHandler)
        ],
      ),
    );
  }
}
