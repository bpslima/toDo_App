import 'package:flutter/material.dart';
import 'package:todo_app/home_controller.dart';
import 'package:todo_app/screens/home_repository.dart';
import 'package:todo_app/screens/logo_bar.dart';
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
        const LogoBar(),
        const SizedBox(height: 40),
        Column(mainAxisSize: MainAxisSize.min, children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color.fromARGB(255, 243, 175, 73),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        hintText: 'Atividade',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 1, 9, 77)),
                      )),
                  //const SizedBox(height: 25),
                  TextFormField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        hintText: 'Descrição',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 1, 9, 77)),
                      )),
                  //  const SizedBox(height: 16),
                  TextFormField(
                      controller: titleController,
                      decoration: const InputDecoration(
                        hintText: 'Status',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 1, 9, 77)),
                      ))
                ]),
          ),
          const SizedBox(height: 16),
          SizedBox(height: MediaQuery.of(context).size.height*0.06, width: MediaQuery.of(context).size.width*0.3,
          child: ElevatedButton(
              //cadastro vai sair no banco do crucrud. Url é o destino
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 1, 9, 77)),
              onPressed: () {
                homeController.createActivity(TodoModel(
                    title: titleController.text, status: '', subtitle: ''));
              },
              child: const Text('Registar')),
          ),
        ]),
      ]),
    ));
  }
}
