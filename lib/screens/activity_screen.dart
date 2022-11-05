import 'package:flutter/material.dart';
import 'package:todo_app/home_controller.dart';
import 'package:todo_app/screens/home_repository.dart';
import 'package:todo_app/todo_model.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();

  final homeController = HomeController(ActivityRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
        Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 188, 104),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text('To do app', style: TextStyle(fontSize: 12)),
                  ]),
            )),
        Column(mainAxisSize: MainAxisSize.min, children: [
          TextFormField(
            controller: titleController,
            decoration: const InputDecoration(hintText: 'Atividade'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
              //cadastro vai sair no banco do crucrud. Url é o destino
              onPressed: () {
                homeController.createActivity(TodoModel(
                    title: titleController.text, status: '', subtitle: ''));
              },
              child: const Text('Registar')),
        ]),
      ])),
    );
  }
}
