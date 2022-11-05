
import 'package:flutter/material.dart';
import 'package:todo_app/home_controller.dart';
import 'package:todo_app/todo_model.dart';
import 'package:http/http.dart' as http;

class ActivityRepository {
  final baseUrl = 'https://crudcrud.com/api/e5f22c4ad268489e980c771d4294e22c';
  Future<bool> createActivity(TodoModel todo) async {
    final response = await http.post(
      Uri.parse('$baseUrl/todo'),
      body: todo.toJson(),
      headers: {
        "content-type": "application/json",
        "accept": "application/json",
      },
    );
    return true;
  }
}
