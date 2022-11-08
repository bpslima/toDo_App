import 'package:flutter/material.dart';
import 'package:todo_app/home_controller.dart';
import 'package:todo_app/screens/home_repository.dart';
import 'package:todo_app/screens/images.dart';
import 'package:todo_app/screens/logo_bar.dart';
import 'package:todo_app/todo_model.dart';

class ListActivities extends StatefulWidget {
  const ListActivities({super.key});

  @override
  State<ListActivities> createState() => _ListActivitiesState();
}

class _ListActivitiesState extends State<ListActivities> {
  final controller = HomeController(ActivityRepository());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const LogoBar(),
      SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: FutureBuilder<List<TodoModel>>(
              future: controller.getActivity(),
              builder: (context, snapshot) {
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    final activityList = snapshot.data?[index];
                    return ListTile(
                        title: Text(activityList?.title ?? ''),
                        subtitle: Text('${activityList?.subtitle ?? ''}, \n ${activityList?.status?? ''}'),                      
                        isThreeLine: true,
                        trailing: IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () async {
                              final result = await controller
                                  .deleteActivity(activityList!.id!);
                            }));
                  },
                );
              })),
    ])));
  }
}
