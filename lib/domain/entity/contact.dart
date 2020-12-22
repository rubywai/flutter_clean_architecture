

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Contact extends Equatable{
  final String id;
  final String name;
  final String job;
  final String age;
  Contact({@required this.id,@required this.name, @required this.job,@required this.age});

  @override
  List<Object> get props => [id,name,job,age];

}