import 'package:flutter/material.dart';
import 'package:todo_app/buttons.dart';
import 'package:todo_app/screens/activity_screen.dart';
import 'package:todo_app/screens/list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenStat();
}

class _HomeScreenStat extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('To do App')),
        body: Center(
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
            const SizedBox(height: 40),
            Buttons(
              text: 'Deletar atividade',
              screen: const HomeScreen(),
            ),
          ]),
        ));
  }
}
