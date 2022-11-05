import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  String text;
  Widget screen;
  Buttons({Key? key, required this.text,  required this.screen})
      : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => widget.screen));
      },
      child: Text(widget.text),
    );
  }
}
