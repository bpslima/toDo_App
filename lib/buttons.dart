import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  String text;
  Widget screen;
  Buttons({Key? key, required this.text, required this.screen})
      : super(key: key);

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return 
    SizedBox(height: MediaQuery.of(context).size.height*0.1,
    width: MediaQuery.of(context).size.width*0.22,
      child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 1, 9, 77),
          textStyle: const TextStyle(color: Color.fromARGB(255, 247, 172, 59))),
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => widget.screen));
      },
      child: Text(widget.text),
    ));
  }
}
