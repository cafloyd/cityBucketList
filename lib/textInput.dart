import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final myController;

  TextInput(this.myController);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {



  @override
  void initState() {
    super.initState();

    widget.myController.addListener(_printLatestValue);
  }

  _printLatestValue () {
    print ('Second text field: ${widget.myController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: widget.myController,
        decoration: InputDecoration(
            border: InputBorder.none, hintText: 'Enter a new place name'),
      )
    );
  }
}
