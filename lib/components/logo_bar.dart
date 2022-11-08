import 'package:flutter/material.dart';
import 'package:todo_app/components/images.dart';

class LogoBar extends StatelessWidget {
  const LogoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
    Container(
      
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 20, bottom: 30),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 226, 141, 12),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('To do app',
                    style: TextStyle(
                        fontSize: 35,
                        color: Color.fromARGB(255, 1, 9, 77),
                        fontWeight: FontWeight.bold)),
                const SizedBox(width: 10),
                Image.asset(Images.check,
                fit: BoxFit.contain,
                    height: 50,
                    width: 45,
                    color: const Color.fromARGB(255, 1, 9, 77)),
              ]),
        )));
  }
}
