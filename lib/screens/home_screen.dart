import 'package:flutter/material.dart';
import 'package:todo_app/components/buttons.dart';
import 'package:todo_app/screens/activity_screen.dart';
import 'package:todo_app/components/images.dart';
import 'package:todo_app/screens/list_screen.dart';
import 'package:todo_app/components/logo_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenStat();
}

class _HomeScreenStat extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
      const LogoBar(),
      const SizedBox(height: 40),
      Center(
        child: Column(children: [
          const SizedBox(height: 40),
          Buttons(
            text: 'Adicionar atividades',
            screen: const ActivityScreen(),
          ),
          const SizedBox(height: 40),
          Buttons(
            text: 'Listar atividades',
            screen: const ListActivities(),
          ),
          const SizedBox(height: 80),
          SizedBox(
            child: Image.asset(
              Images.schedule,
              fit: BoxFit.contain,
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width * 0.6,
            ),
          )
        ]),
      ),
    ])));
  }
}
