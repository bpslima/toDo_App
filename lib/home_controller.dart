import 'package:todo_app/screens/home_repository.dart';

import 'todo_model.dart';

class HomeController {
  final ActivityRepository titleRepository;

  HomeController(this.titleRepository);

  Future<void> createActivity(TodoModel todo) async {
    final result = await titleRepository.createActivity(todo);
  }

  Future<List<TodoModel>> getActivity() async {
    final result = await titleRepository.getActivity();
    return result;
  }

  Future<bool> deleteActivity(String id) async {
    final result = await titleRepository.deteleActivity(id);
    return result;
  }
}
