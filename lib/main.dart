import 'package:flutter/material.dart';
import 'package:todo_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
 //       routes: <String, WidgetBuilder>{
 //         'home': (BuildContext context) => const ActivityScreen(),
 //       },
        theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 245, 213, 166),
        ),
        home: const HomeScreen());
  }
}
