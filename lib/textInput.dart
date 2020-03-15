import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {

  

  @override
  void initState() {
    super.initState();

    myController.addListener(_printLatestValue);
  }

  _printLatestValue () {
    print ('Second text field: ${myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: myController,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Enter a new place name'),
      )
    );
  }
}
