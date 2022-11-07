// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TodoModel {
  final String title;
  final String subtitle;
  final String status;
  final String? id;

  TodoModel(
      {required this.title,
      required this.subtitle,
      required this.status,
      this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'subtitle': subtitle,
      'status': status,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      title: map['title'] as String,
      subtitle: map['subtitle'] as String,
      status: map['status'] as String,
      id: map['_id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoModel.fromJson(String source) =>
      TodoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'TodoModel(title: $title, subtitle: $subtitle, status: $status)';

  @override
  bool operator ==(covariant TodoModel other) {
    if (identical(this, other)) return true;

    return other.title == title &&
        other.subtitle == subtitle &&
        other.status == status;
  }

  @override
  int get hashCode => title.hashCode ^ subtitle.hashCode ^ status.hashCode;
}
