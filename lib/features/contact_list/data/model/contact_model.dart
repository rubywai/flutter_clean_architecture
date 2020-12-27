import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/features/contact_list/domain/entity/contact.dart';


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
        id: json['job'] as String,
        name: json['name'] as String,
        job: json['job'] as String,
        age: json['age'] as String,
      );

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': this.id,
        'name': this.name,
        'job': this.job,
        'age': this.age,
      };
}
