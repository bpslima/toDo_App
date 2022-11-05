import 'package:todo_app/screens/home_repository.dart';

import 'todo_model.dart';

class HomeController {
  final ActivityRepository titleRepository;
  // final SubtitleRepository subtitleRepository;
  // final StatusRepository statusRepository;

  HomeController(this.titleRepository);
  Future<void> createActivity(TodoModel todo) async {
    final result = await titleRepository.createActivity(todo);
  }
}
