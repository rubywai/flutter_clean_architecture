import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/domain/entity/contact.dart';

class ContactModel extends Contact {
  final String id;
  final String name;
  final String job;
  final String age;

  ContactModel(
      {@required this.id,
      @required this.name,
      @required this.job,
      @required this.age});

  factory ContactModel.fromJson(Map<String, dynamic> json) => ContactModel(
        id: json['name'] as String,
        name: json['job'] as String,
        job: json['age'] as String,
        age: json['id'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': this.id,
        'name': this.name,
        'job': this.job,
        'age': this.age,
      };
}
