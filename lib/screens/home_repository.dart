import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todo_app/home_controller.dart';
import 'package:todo_app/todo_model.dart';
import 'package:http/http.dart' as http;

class ActivityRepository {
  final baseUrl = 'https://crudcrud.com/api/55196b1f0e114e6a922e33742dfe91c2';


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

  Future<List<TodoModel>> getActivity() async {
    final response = await http.get(Uri.parse('$baseUrl/todo'));
    final list = List.from(jsonDecode(response.body));
    final activitiesList = list.map((e) => TodoModel.fromMap(e)).toList();
    return activitiesList;
  }

  Future<bool> deteleActivity(String id) async {
    final response = await http.delete(
      Uri.parse('$baseUrl/todo/$id'),
    );
    return response.statusCode == 200;
  }
}
