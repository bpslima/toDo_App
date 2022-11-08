import 'package:todo_app/screens/home_repository.dart';
import 'todo_model.dart';

class HomeController {
  final ActivityRepository taskRepository;

  HomeController(this.taskRepository);

  Future<void> createActivity(TodoModel todo) async {
    final result = await taskRepository.createActivity(todo);
  }

  Future<List<TodoModel>> getActivity() async {
    final result = await taskRepository.getActivity();
    return result;
  }

  Future<bool> deleteActivity(String id) async {
    final result = await taskRepository.deteleActivity(id);
    return result;
  }
}
